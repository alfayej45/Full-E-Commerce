
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/model/auth_model/otp_model.dart';
import 'package:e_commercefullproject/screen/auth/login_screen.dart';
import 'package:e_commercefullproject/utils/base_url.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';
import '../../golobalWidgets/exceptions.dart';
import '../../golobalWidgets/toast/fluttertoast.dart';

class OtpRepository{
  var box=Hive.box("user");
  var dio=Dio();
  OtpModel? otpModel;
  
  Future getOtp(String otpcontrollartext) async{
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
  
   try{
     var response=await dio.post("${BaseUrl.BASE_URL}auth/confirm_code",
         queryParameters: {
           "user_id":"${box.get("userid")}",
           "verification_code":"$otpcontrollartext"
         });
          if(response.data["result"]==true){
            print(response.data);
            ToastWidget().success(response.data["message"]);
             Get.offAll(LoginScreen());
            return response.data;
          }

   }catch(e){
     final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
     ToastWidget().success("$errorMessage");
     print("Error Message__$errorMessage");
     throw Exception("'Failed to load jobs from API $e'");

   }
  }
  
}