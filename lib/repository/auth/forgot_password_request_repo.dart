import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/controllar/authentice_controllar/forgot_password_request.dart';
import 'package:e_commercefullproject/golobalWidgets/exceptions.dart';
import 'package:e_commercefullproject/golobalWidgets/toast/fluttertoast.dart';
import 'package:e_commercefullproject/model/auth_model/forgot_password_request.dart';
import 'package:e_commercefullproject/utils/base_url.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class ForgetPassRepository{
  var dio=Dio();
  var box=Hive.box("user");
  Future<ForgotPasswordRequestModel?> getForgetPasswort()async{
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

    try{

      var response=await dio.post("${BaseUrl.BASE_URL}auth/password/forget_request",
          data: {
            "email_or_phone": "${box.get("email_or_phone")}",
            "send_code_by": "phone"});

      if(response.statusCode==200){

        return forgotPasswordRequestModelFromJson(response.data);

      }
    }catch(e){
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
      ToastWidget().success("$errorMessage");
      print("Error Message__$errorMessage");
      throw Exception("'Failed to load jobs from API $e'");

    }



  }

}