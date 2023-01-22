import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box=Hive.box("user");
    return Scaffold(
      body: Center(
        child: Text("${box.get("access_token")}"),
      ),
    );
  }
}

