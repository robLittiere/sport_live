import 'dart:convert';

import 'package:sport_live/models/Article.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async{

    String url = 'https://newsapi.org/v2/top-headlines?country=fr&category=sports&apiKey=f4b6507c16bf4e2fbbb1bf3c3c81006d';
    var response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=fr&category=sports&apiKey=f4b6507c16bf4e2fbbb1bf3c3c81006d'));
    var jsonData = jsonDecode(response.body);

    if(jsonData['status']== 'ok'){
      jsonData['news'].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){

          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publishedAt: element['publishedAt'],
            content: element['content']
          );
          
          news.add(articleModel);
        };
      });
    };
  }
}