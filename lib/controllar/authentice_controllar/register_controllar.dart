
import 'package:e_commercefullproject/repository/auth/register_ripo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegisterControllar extends GetxController{

  var emailcontrollar=TextEditingController();
  var passwordcontrollar=TextEditingController();
  var namecontrollar=TextEditingController();
  var confirmpasswordcontrollar=TextEditingController();
  var registerRepository=RegisterRepository();


  @override
  void onInit() {
    emailcontrollar=TextEditingController();
    passwordcontrollar=TextEditingController();
    namecontrollar=TextEditingController();
    confirmpasswordcontrollar=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontrollar.dispose();
    passwordcontrollar.dispose();
    namecontrollar.dispose();
    confirmpasswordcontrollar.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  void setRegister()async{

   await registerRepository.getRegister(namecontrollar.text ,emailcontrollar.text,
       passwordcontrollar.text,confirmpasswordcontrollar.text);

  }


}