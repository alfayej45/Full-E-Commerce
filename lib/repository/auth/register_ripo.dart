
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/screen/auth/login_screen.dart';
import 'package:e_commercefullproject/screen/auth/otp_sceen.dart';
import 'package:get/get.dart';
import 'package:e_commercefullproject/golobalWidgets/toast/fluttertoast.dart';
import 'package:e_commercefullproject/model/auth_model/register_model.dart';
import 'package:e_commercefullproject/utils/base_url.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../golobalWidgets/exceptions.dart';


class RegisterRepository{
  var dio=Dio();
  var box=Hive.box("user");

  Future<RegisterModel?> getRegister(String name,String email,String password,String compassword)async{
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient dioClient) {
        dioClient.badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);
        return dioClient;
      };
      try{
        var response= await dio.post("https://khejuria.com/api/v2/auth/signup",
          data: {
          "name":"$name",
          "email_or_phone":"$email",
          "password":"$password",
          "passowrd_confirmation":"$compassword",
          });
         print(response.data);
        if(response.data["result"]==true) {
            print(response.data);
            ToastWidget().success("${response.data["message"]}");
            box.put("userid", response.data["user_id"]);

            box.put("email_or_phone", email);
            // box.put("getemail_or_phone", response.data[""]);
            Get.to(OtpPage());
            return registerModelFromJson(response.data);
          }

      }catch(e){
        final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
        print("Error Message__$errorMessage");
        ToastWidget().success("$errorMessage");
        throw Exception("Failed to load jobs from API $e");

      }


    }

  }

