import 'package:flutter/material.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/home/my_theme.dart';
import 'package:news_app/home/news_details.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes: {HomeScreen.routeName:(context)=> HomeScreen(),
               NewsDetails.routeName:(context)=>NewsDetails()

      },
      theme: MyTheme.lightTheme,
    );
  }
}
