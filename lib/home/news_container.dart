import 'package:flutter/material.dart';
import 'package:news_app/home/news_item.dart';
import 'package:news_app/manager/api_manager.dart';
import 'package:news_app/model/NewsResponse.dart';

import '../model/SourcesResponse.dart';

class NewsContainer extends StatelessWidget {
Source source;
NewsContainer({required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(sourceId: source.id??''),
        builder: (context,snapshot){
          if(snapshot.connectionState== ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if(snapshot.hasError){
            return Column(
              children: [
                const Text('Something went wrong'),
                ElevatedButton(onPressed: (){}, child: const Text('Try agian'))
              ],
            );
          }
          else{
            if(snapshot.data?.status!= 'ok'){
              return Column(
                children: [
                  Text(snapshot.data?.message ??''),
                  ElevatedButton(onPressed: (){}, child: const Text('Try again'))
                ],
              );
            }
            var newsList = snapshot.data?.articles??[];
            return ListView.builder(
                itemBuilder: (context,index){
               return NewsItem(news: newsList[index]);
            },
            itemCount:newsList.length
              ,);
          }

    });
  }
}
