import 'package:flutter/material.dart';
class FeaturedProductsWidget extends StatelessWidget {
 final String? image;
 final String?name;
 final String? price;
  const FeaturedProductsWidget({Key? key, this.image, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      width: 150,
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
                image: DecorationImage(image:
                NetworkImage(image!),
                    fit: BoxFit.fill)
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(name!),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text('\$ ${price}'),
          )
        ],
      ),
    );
  }
}
