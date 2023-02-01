
import 'package:flutter/material.dart';
import 'package:news_app/home/home_drawer.dart';

class HomeScreen extends StatelessWidget {
   static String routeName = 'home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45)
          )
        ),
        title: Text('News App',style: Theme.of(context).textTheme.headline1,),
      ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
    );
  }
}
