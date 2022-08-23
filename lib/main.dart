import 'package:flutter/material.dart';
import 'package:shoes_ui_provider/pages/home/home_page.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}
