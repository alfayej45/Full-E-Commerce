import 'package:card_swiper/card_swiper.dart';
import 'package:e_commercefullproject/controllar/product_controllar/allproductpaginetions_controllar.dart';
import 'package:e_commercefullproject/golobalWidgets/featured_categorice_widget/featured_categirice_widget.dart';
import 'package:e_commercefullproject/golobalWidgets/featured_products_widget/featured_products.dart';
import 'package:e_commercefullproject/golobalWidgets/textfild/textfilddesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../golobalWidgets/swiper_conteinar_widget.dart';
class HomePage extends GetView<AllProductPaginetionsControllar> {
   HomePage({Key? key}) : super(key: key);

   List data=[
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJdG8Y47jqs_pgA2Se_Wi__VdGEL8Wlqk1ZA&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJdG8Y47jqs_pgA2Se_Wi__VdGEL8Wlqk1ZA&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJdG8Y47jqs_pgA2Se_Wi__VdGEL8Wlqk1ZA&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJdG8Y47jqs_pgA2Se_Wi__VdGEL8Wlqk1ZA&usqp=CAU"
   ];


  @override
  Widget build(BuildContext context) {
    var box=Hive.box("user");
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey
      ),
        backgroundColor: Colors.white60,
        elevation: 0,
        title: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25)
          ),
          child: TextFildDesign(name: "search",colors: Colors.grey,icons: Icon(Icons.search),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.20,
                child: Swiper(
                  autoplay: true,
                  itemBuilder: ( contex, index){
                    return SwiperConteinarWidget();
                  },
                  itemCount:3,
                  pagination:const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.white,activeColor: Colors.deepOrange
                      )),
                    controller: SwiperController(),


                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Featured Categories",style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),),
            ),
            // SizedBox(
            //   height: 150,
            //   child: ListView.builder(
            //    scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       primary: false,
            //       itemCount: data.length,
            //       itemBuilder: (context,index){
            //         return  Container(
            //           height: 150,
            //           width: 100,
            //           decoration: BoxDecoration(
            //               color: Colors.red,
            //               borderRadius: BorderRadius.circular(15)
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               ClipRRect(
            //                 borderRadius: BorderRadius.circular(10),
            //                 child: Image.network(data[index],
            //                   fit: BoxFit.fill,),
            //               ),
            //               SizedBox(height: 5,),
            //               Text("Title")
            //             ],
            //           ),
            //         );
            //       }),
            // ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(data.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: FeaturedCategoriceWidget(
                        image: "${data[index]}",
                        name: "I Am Obak",
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Featured Products",style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),),
            ),
            SizedBox(height: 10,),

            Obx(() => GridView.builder(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: controller.allproductlist.value.data!.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 0.6),
                itemBuilder: (context, index) {
                  print("data....${controller.allproductlist.value.data![index].name}");
                  return FeaturedProductsWidget(
                    name: "${controller.allproductlist.value.data![index].name}",

                  );
                }))


          ],
        ),
      ),
    );
  }
}

