import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news_app/home/tab_container.dart';
import 'package:news_app/manager/api_manager.dart';
import 'package:news_app/model/SourcesResponse.dart';

import 'cagtegory.dart';

class CategoryDetails extends StatelessWidget {

Category category;
CategoryDetails({required this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.id),
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
            var sourcesList = snapshot.data?.sources??[];
            return TabContainer(sourceList: sourcesList);
          }
        }
    );
  }
}
