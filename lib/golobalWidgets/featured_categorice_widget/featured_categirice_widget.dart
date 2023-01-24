import 'package:flutter/material.dart';
class FeaturedCategoriceWidget extends StatelessWidget {
 final String? image;
 final String? name;
  const FeaturedCategoriceWidget({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.network(image,
          //     fit: BoxFit.fill,),
          // ),,,
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(image!),fit: BoxFit.fill)

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(name!),
          )
        ],
      ),
    );
  }
}
