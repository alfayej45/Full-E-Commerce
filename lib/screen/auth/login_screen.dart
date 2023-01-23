import 'package:e_commercefullproject/controllar/authentice_controllar/login_controllar.dart';
import 'package:e_commercefullproject/screen/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends GetView<LoginControllar> {

   LoginScreen({Key? key}) : super(key: key);
  // bool visibility=true;
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF7972e6),
      ),
      backgroundColor: Color(0XFFdfe0e4),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                AnimatedContainer(
                  curve: Curves.ease,
                  height: MediaQuery.of(context).size.height * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF7972e6),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  duration: Duration(seconds: 5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 10,),
                        Text("Sing In",style: GoogleFonts.aladin(
                            textStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFd9d2fe)))),
                        Text("Sing In Discover Amazing thing Near\n Around you",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFd9d2fe))))

                      ],
                    ),
                  ),
                ),
                // Positioned(
                //     top: 10,
                //     left: 50,
                //     right: 50,
                //     child: Container(
                //       height: 150,
                //       width: 80,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(15),
                //           image: DecorationImage(
                //               image: AssetImage(
                //                 "images/shoping-removebg-preview.png",
                //               ),
                //               fit: BoxFit.fill)),
                //     )),
                Padding(
                  padding: EdgeInsets.only(top: 100,left: 10,right: 10),
                  child: Container(
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: TextField(
                                  controller:controller.emailcontrollar,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    filled: true,
                                    fillColor: Color(0xFFefefef),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:BorderSide(color:Colors.white60)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:BorderSide(
                                            color: Colors.white60,
                                            width: 1
                                        )
                                    ),
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: TextField(
                                  controller:controller.passwordcontrollar,
                                  obscureText: controller.visibiliti,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      filled: true,
                                      fillColor: Color(0xFFefefef),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(color:Colors.white60)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide:BorderSide(
                                              color: Colors.white60,
                                              width: 1
                                          )
                                      ),
                                      prefixIcon: Icon(Icons.key),
                                      suffixIcon: Obx(() => InkWell(
                                          onTap: (){
                                            controller.onChenge();
                                          },
                                          child:controller.visibiliti ?Icon(Icons.visibility):
                                          Icon(Icons.visibility_off)))
                                      
                                  ),

                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: GestureDetector(
                                onTap: (){
                                  controller.setlogn();
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFf7972e6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Center(
                                        child: Text(
                                          "Sing In",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Forgot Password?", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF7972e6),
                                fontSize: 12),)


                          ])),
                )
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 310),
            //   child: Align(
            //     alignment: Alignment.topCenter,
            //     child: Text(
            //       "SKIP",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Color(0XFFa3a3a3),
            //           fontSize: 23),
            //     ),
            //   ),
            // ),


            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Divider(
                    indent: 7,
                    thickness: 1,
                    color: Color(0xff818181),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Login using Social Media',
                  style: TextStyle(color: Color(0xff818181), fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Divider(
                    endIndent: 7,
                    thickness: 1,
                    color: Color(0xff818181),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                // height: 10,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                            Color(0xFf5478b2).withOpacity(0.8)),
                        child: Center(
                          child: Text(
                            "f",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                            Color(0xFf50cafa).withOpacity(0.8)),
                        child: Center(
                          child: Text(
                            "t",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                            Color(0xFffc6254).withOpacity(0.8)),
                        child: Center(
                          child: Text(
                            "g",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                            Color(0xFf5478b2).withOpacity(0.8)),
                        child: Center(
                            child: Icon(
                              Icons.phone_android_outlined,
                              size: 25,
                              color: Colors.white60,
                            )

                          // Text("f",style: TextStyle(fontWeight: FontWeight.bold
                          //     ,color: Colors.white,fontSize: 30),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_)=>RegisterScreen()));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFa3a3a3),
                      fontSize: 23),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

}
