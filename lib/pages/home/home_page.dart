import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../views/product_views.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, widget) {
        var homeProvider = Provider.of<HomeProvider>(context, listen: false);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 150,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // #image Avatar
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/img.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: const [
                        Text(
                          " Good Morning 👋",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          "Andrew Ainsley",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/img_1.png",),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/heart_icon.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Consumer<HomeProvider>(builder: (context, home, child) {
                  return CupertinoSearchTextField(
                    onChanged: (String value) {
                      print('The text has changed to: $value');
                    },
                    onSubmitted: (String value) {
                      print('Submitted text: $value');
                    },
                  );
                }),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                children: [
                  // 3specialOffers All product
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Special Offers",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontSize: 23),
                      ),
                      // TextButton(
                      //   onPressed: () {  },
                      //   child: Text(
                      //     "See All",
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontFamily: "Roboto",
                      //         fontSize: 20),
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // #intro product
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/img_2.png"),

                      ),),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // #brends
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_3.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Nike",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_4.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Adidas",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_5.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Puma",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_6.png",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          const Text(
                            "Asics",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_7.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Reebok",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_8.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "New Ba..",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_9.png",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          const Text(
                            "Converse",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            iconSize: 60,
                            icon: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade200,
                              child: Image.asset(
                                "assets/images/img_10.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "More ..",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: "Roboto"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // #category list
                  Consumer<HomeProvider>(builder: (context, home, child){
                    return  homeProvider.categoryLis();
                  }),
                  const SizedBox(
                    height: 25,
                  ),
                  // #Text popular All Products
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontSize: 23),
                      ),
                      // TextButton(
                      //   onPressed: () {  },
                      //   child: Text(
                      //     "See All",
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontFamily: "Roboto",
                      //         fontSize: 20),
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ProductViews(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
