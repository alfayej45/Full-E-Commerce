import 'package:e_commercefullproject/utils/base_url.dart';
import 'package:flutter/material.dart';
class FeaturedProductsWidget extends StatelessWidget {
 final String? image;
 final String?name;
 final String? price;
  const FeaturedProductsWidget({Key? key, this.image, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white60,
            borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.withOpacity(0.5),width: 1)

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
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:
                    NetworkImage("https://khejuria.com/public/"+image!,),
                         fit: BoxFit.fill,
                    // colorFilter: ColorFilter.linearToSrgbGamma()
                    )
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(name!),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(' ${price}'),
            )
          ],
        ),
      ),
    );
  }
}
