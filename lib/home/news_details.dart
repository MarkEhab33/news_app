import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/NewsResponse.dart';
import 'my_theme.dart';

class NewsDetails extends StatelessWidget {
   static const String routeName ='news_details';

  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;
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
      body: Container(
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
            SizedBox(height: 20,),
            Text(news.description??''),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                openUrl(news.url);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('View Full Article',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_right,size: 30,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void openUrl(String? url)async{
    if(url!=null){
   if( await canLaunchUrl(Uri.parse(url))){
           await launchUrl(Uri.parse(url));
    }
    }
  }
}
