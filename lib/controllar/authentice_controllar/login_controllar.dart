
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../repository/auth/login_repository.dart';

class LoginControllar extends GetxController{

  var  emailcontrollar=TextEditingController();
  var  passwordcontrollar=TextEditingController();

  LoginRepository loginRepository=LoginRepository();

   @override
  void onInit() {
       emailcontrollar=TextEditingController();
       passwordcontrollar=TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void dispose() {
    emailcontrollar.dispose();
    passwordcontrollar.dispose();
    super.dispose();
  }
  
  
  void setlogn()async{
     await loginRepository.getlogin(emailcontrollar.text, passwordcontrollar.text);
     
  }



}