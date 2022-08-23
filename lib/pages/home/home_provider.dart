import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  final categoryList = [
    "All", "Nike", "Adidas", "Puma", "Asics", "Reebok", "New Balance", "Converse"
  ];
  int currentSelected = 0;

  Widget categoryLis(){
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,  index) => GestureDetector(
          onTap: (){
              currentSelected = index;
              notifyListeners();
          },
          child: Container(
            height: 20,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(width: 2.5),
              borderRadius: BorderRadius.circular(30),
              color: currentSelected == index ? Colors.black : Colors.white,
            ),
            child: Text(categoryList[index], style: TextStyle(color: currentSelected == index ? Colors.white : Colors.black, fontSize: 16, fontFamily: "Roboto"),),
          ),
        ),
        itemCount: categoryList.length,
        separatorBuilder: (_,index) => const SizedBox(width: 15,),
      ),
    );
  }


}