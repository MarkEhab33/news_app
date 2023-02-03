import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourcesResponse.dart';
class ApiManager {
  static const String baseUrl = 'newsapi.org';
static Future<SourcesResponse> getSources(String categoryId) async{
  var url = Uri.https(baseUrl, '/v2/top-headlines/sources',{
    'apiKey':'1c46576a7f2c48b58983b3654cc69aff',
    'category':categoryId
  });
  try{  var response = await http.get(url);
  var bodyString = response.body;
  var json = jsonDecode(bodyString);
  var sourceResponse = SourcesResponse.fromJson(json);
  return sourceResponse;
  } catch(e){
    throw e;
  }

 }
 static Future<NewsResponse> getNews({String? sourceId,String? searchKeyword}) async{
  var url = Uri.https(baseUrl, '/v2/everything',{
    'apiKey': '1c46576a7f2c48b58983b3654cc69aff',
    'sources':sourceId,
    'q':searchKeyword
  });
  try {
    var response = await http.get(url);
    var bodyString = response.body;
    var json = jsonDecode(bodyString);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }catch(e){
    throw e;
  }
 }
}