import 'package:flutter/material.dart';
import 'package:news_app/home/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories=1;
  static const int setting=2;
 Function onDrawerItemClicked;
HomeDrawer({required this.onDrawerItemClicked});
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Container(
            color: MyTheme.primaryLightColor,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 64),
           child: Text('News App!', style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,
           ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: (){
                onDrawerItemClicked(HomeDrawer.categories);
              },
              child: Row(
                children: [
                 const Icon(Icons.list),
                  const SizedBox(width: 10,),
                  Text('Categories',style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: InkWell(
              onTap: (){
                onDrawerItemClicked(HomeDrawer.setting);
              },
              child: Row(
                children: [
                  const Icon(Icons.settings),
                  const SizedBox(width: 10,),
                  Text('Settings',style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
