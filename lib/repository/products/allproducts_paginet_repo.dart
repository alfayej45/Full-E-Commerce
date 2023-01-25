
import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:e_commercefullproject/model/products_model/products_paginet_model.dart';
class AllProductsPaginetRepository{
 
  var dio=Dio();
  
  Future<AllProductsPaginetModel?> getAllProductsPaginet()async{
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
     
    try{
      var response= await dio.get("https://khejuria.com/api/v2/products?page=1");
      if(response.statusCode==200){
        print(response.data);

        return allProductsPaginetModelFromJson(jsonEncode(response.data));}

      
    }catch (e){
      throw Exception("'Failed to load jobs from API $e'");
      
    }
    
  }
  
}