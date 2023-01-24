import 'package:e_commercefullproject/golobalBindings/bindins.dart';
import 'package:e_commercefullproject/screen/auth/find_screen.dart';
import 'package:e_commercefullproject/screen/auth/home_page/homepage.dart';
import 'package:e_commercefullproject/screen/bottom_nav_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

 Future<void> main()async {
  GolobalBindings().dependencies();
  await Hive.initFlutter();
  await Hive.openBox('user');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // iconTheme: IconThemeData(
        //   color: Colors.grey
        // )
      ),

      home: BottomNavBar()
    );
  }
}

