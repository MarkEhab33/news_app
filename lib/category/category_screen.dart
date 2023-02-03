
import 'package:flutter/material.dart';
import 'package:news_app/category/cagtegory.dart';
import 'package:news_app/category/category_item.dart';

class CategoryScreen extends StatelessWidget {
 var categoryList = Category.getCategories();
 Function onCategoryItemClicked;
 CategoryScreen({required this.onCategoryItemClicked});
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Stack(
       children: [
         Positioned.fill(
           child: Image.asset(
             'assets/images/main_background.png',
             repeat: ImageRepeat.repeat,
           ),
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Padding(
               padding: const EdgeInsets.all(15.00),
               child: Text('Pick your category \nof interest',style: Theme.of(context).textTheme.headline2,),
             ),
             Expanded(
               child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 5,
                 crossAxisSpacing: 2,
               ),
                 itemBuilder:(context,index){
                   return InkWell(
                       onTap: (){
                            onCategoryItemClicked(categoryList[index]);
                       },
                       child: CategoryItem(index: index ,category: categoryList[index]));
                 } ,itemCount:categoryList.length,
               ),
             ),
           ],
         ),
       ],
     ),
    );
  }
}
