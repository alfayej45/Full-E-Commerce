
import 'package:e_commercefullproject/repository/auth/otp_repo.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class OtpCntrollar extends GetxController{

  var otp_controllar=OtpFieldController();

  OtpRepository otpRepository=OtpRepository();
  @override
  void onInit() {
    otp_controllar=OtpFieldController();
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }

  void setOtp(String otp ) async{

    await otpRepository.getOtp(otp);

  }


}