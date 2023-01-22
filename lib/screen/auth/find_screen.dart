import 'package:e_commercefullproject/screen/auth/login_screen.dart';
import 'package:e_commercefullproject/screen/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({Key? key}) : super(key: key);
  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFdfe0e4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                AnimatedContainer(
                  curve: Curves.ease,
                  height: MediaQuery.of(context).size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF7972e6),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  duration: Duration(seconds: 5),
                ),
                Positioned(
                    top: 10,
                    left: 50,
                    right: 50,
                    child: Container(
                      height: 150,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                "images/shoping-removebg-preview.png",
                              ),
                              fit: BoxFit.fill)),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 150,left: 20,right: 20),
                  child: Container(
                      height: size.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome To My App",
                              style: GoogleFonts.akronim(
                                  textStyle: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFFa3a3a3))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Discover Amazing thing Near Around you",
                              style: GoogleFonts.akronim(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFFa3a3a3))),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: GestureDetector(
                                onTap: (){
                                  Get.offAll(LoginScreen());
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
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: GestureDetector(
                                onTap: (){
                                  Get.offAll(RegisterScreen());
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xFf7972e6),
                                            width: 1.5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Center(
                                        child: Text(
                                          "Sing Up",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFf7972e6)),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Or Connect Usign",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8b8b8b)),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //        flex: 1,
                              //       child: Container(
                              //         height: 2,
                              //         color: Colors.red,
                              //       ),
                              //         ),
                              //
                              //     Expanded(
                              //        flex: 1,
                              //         child: Text("Or Connect Usign ")),
                              //     Expanded(
                              //       flex: 1,
                              //       child: Container(
                              //         height: 2,
                              //
                              //         color: Colors.red,
                              //       ),
                              //     ),
                              //     // Container(
                              //     //   height: 2,
                              //     //   width: double.infinity,
                              //     //   color: Color(0xFFe4e4e4),),
                              //   ],
                              // )
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
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
                            )
                          ])),
                )
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top:),
            //   child: Align(
            //     alignment: Alignment.topCenter,
            //     child: InkWell(
            //       onTap: (){
            //         Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
            //
            //       },
            //       child: Text(
            //         "SKIP",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Color(0XFFa3a3a3),
            //             fontSize: 23),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
