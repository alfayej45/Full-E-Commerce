// To parse this JSON data, do
//
//     final forgotPasswordRequestModel = forgotPasswordRequestModelFromJson(jsonString);

import 'dart:convert';

ForgotPasswordRequestModel forgotPasswordRequestModelFromJson(String str) => ForgotPasswordRequestModel.fromJson(json.decode(str));

String forgotPasswordRequestModelToJson(ForgotPasswordRequestModel data) => json.encode(data.toJson());

class ForgotPasswordRequestModel {
  ForgotPasswordRequestModel({
    this.result,
    this.message,
  });

  bool? result;
  String? message;

  factory ForgotPasswordRequestModel.fromJson(Map<String, dynamic> json) => ForgotPasswordRequestModel(
    result: json["result"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
  };
}
