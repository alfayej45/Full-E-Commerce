import 'package:flutter/material.dart';
class SwiperConteinarWidget extends StatelessWidget {
  const SwiperConteinarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage("images/khejurimagejpg.jpg",),fit: BoxFit.fill)
      ),
    );
  }
}
