import 'package:flutter/material.dart';
import 'package:news_app/category/category_screen.dart';

import 'cagtegory.dart';

class CategoryItem extends StatelessWidget {
Category category ;
int index;
CategoryItem({required this.category,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Transform.scale(
      scale: 0.9,
      child: Container(
        margin: (index%2==0)? EdgeInsets.only(left: 18):EdgeInsets.only(right: 18),
        decoration: BoxDecoration(
            color: Color(category.color),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
              bottomRight: Radius.circular((index%2==0) ? 0:20),
              bottomLeft: Radius.circular((index%2==0) ? 20:0)
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 4),
              child: Image.asset(category.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(category.title,style: Theme.of(context).textTheme.headline1,),
            )

          ],
        ),
      ),
    );
  }
}
