

import 'package:flutter/material.dart';

class TextFildDesign extends StatelessWidget {
  String ? name;
  Icon ?icons;
  Color ?colors;
   TextFildDesign({Key? key ,required this.name,required this.icons,required this.colors}) : super(key: key);

  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText:name,
        filled: true,
        fillColor: Theme.of(context).cardColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide:BorderSide(color:colors!)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide:BorderSide(
                color: colors!,
                width: 1
            )
        ),
        prefixIcon: icons,
      ),

    );
  }
}
