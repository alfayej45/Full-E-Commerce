
import 'package:e_commercefullproject/controllar/authentice_controllar/forgot_password_request.dart';
import 'package:e_commercefullproject/controllar/authentice_controllar/login_controllar.dart';
import 'package:e_commercefullproject/controllar/authentice_controllar/otp_controllar.dart';
import 'package:e_commercefullproject/controllar/authentice_controllar/register_controllar.dart';
import 'package:get/get.dart';

import '../controllar/product_controllar/allproductpaginetions_controllar.dart';

class GolobalBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginControllar>(() => LoginControllar());
    Get.lazyPut<RegisterControllar>(() => RegisterControllar());
    Get.lazyPut<OtpCntrollar>(() => OtpCntrollar());
    Get.lazyPut<ForgotPasswordRequestControllar>(() => ForgotPasswordRequestControllar());
    Get.lazyPut<AllProductPaginetionsControllar>(() => AllProductPaginetionsControllar());
    // TODO: implement dependencies
  }

}