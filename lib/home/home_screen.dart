
import 'package:flutter/material.dart';
import 'package:news_app/category/category_details.dart';
import 'package:news_app/category/category_screen.dart';
import 'package:news_app/home/home_drawer.dart';
import 'package:news_app/search/news_search.dart';

import '../category/cagtegory.dart';
import 'Setting_tab.dart';

class HomeScreen extends StatefulWidget {
   static String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)
            )
          ),
          actions: [IconButton(onPressed: (){
            showSearch(context: context, delegate: NewsSearch());
          }, icon:Icon( Icons.search,size: 30,))],
          title: Text('News App',style: Theme.of(context).textTheme.headline1,),
          centerTitle:true ,
        ),
        drawer: Drawer(
          child: HomeDrawer(onDrawerItemClicked: onDrawerItemClicked),
        ),
        body: selectedItemDrawer==HomeDrawer.setting?SettingTab():
        selectedCategory==null? CategoryScreen(onCategoryItemClicked: onCategoryItemClicked,):CategoryDetails(category: selectedCategory!,) ,
      ),
    );

  }

   Category? selectedCategory = null;

   void onCategoryItemClicked(Category category){
        selectedCategory = category;
        setState(() {

        });
   }
   var selectedItemDrawer = HomeDrawer.categories;
   void onDrawerItemClicked(int selectedItem){
       selectedItemDrawer= selectedItem;
       Navigator.pop(context);
       selectedCategory=null;
       setState(() {

       });
   }
}
