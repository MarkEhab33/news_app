import 'package:flutter/material.dart';
import 'package:news_app/home/my_theme.dart';
import 'package:news_app/home/news_details.dart';
import 'package:news_app/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
 NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.of(context).pushNamed(NewsDetails.routeName,arguments:news ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.network(news.urlToImage??''),
 
            ),
            SizedBox(height: 10,),
            Text(news.author??'',
              style: TextStyle(
               fontSize: 15,
               color: MyTheme.greyColor
              ),
              ),
            SizedBox(height: 10,),
            Text(news.title??'',style: TextStyle(
                fontSize: 18,
                color: MyTheme.blackColor
            ),
            ),

            SizedBox(height: 10,),
            Text(news.publishedAt??'',style: TextStyle(
                fontSize: 15,
                color: MyTheme.greyColor

            ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
