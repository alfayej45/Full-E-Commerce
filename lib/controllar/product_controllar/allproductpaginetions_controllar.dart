
import 'package:e_commercefullproject/model/products_model/products_paginet_model.dart';
import 'package:e_commercefullproject/repository/products/allproducts_paginet_repo.dart';
import 'package:get/get.dart';

 class AllProductPaginetionsControllar extends GetxController{
   var allproductlist=AllProductsPaginetModel().obs;
   @override
  void onInit() {
    setallProductPaginetData();
    super.onInit();
  }



    AllProductsPaginetRepository allProductsPaginetRepository=AllProductsPaginetRepository();

   void  setallProductPaginetData()async{

     var network=await allProductsPaginetRepository.getAllProductsPaginet();
      if(network !=null){
        allproductlist.value=network;

      }
    }

 }