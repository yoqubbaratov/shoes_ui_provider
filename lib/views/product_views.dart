import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../pages/home/home_provider.dart';

class ProductViews extends StatelessWidget {
  const ProductViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.9,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      children: Data.generateProducts()
          .map(
            (e) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    e.image,
                    height: 90,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: e.type,
                      style: const TextStyle(
                          color: Colors.black,fontFamily: "Roboto",fontSize: 20
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children:  [
                      const Icon(Icons.star_half, color: Colors.black,),
                      const SizedBox(width: 4,),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: "${e.rating.toString()}  |",
                          style: const TextStyle(
                            color: Colors.grey, fontWeight:FontWeight.w400, fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 60,
                        height: 19,
                        child: Center(child: Text(e.sale,style: const TextStyle(fontSize: 9),)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "\$${e.price.toString()}",
                      style: const TextStyle(
                          color: Colors.black,fontFamily: "Roboto",fontSize: 20
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
