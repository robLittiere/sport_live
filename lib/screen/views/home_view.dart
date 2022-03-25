import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sport_live/widget/article_preview.dart';
import '../../models/Article.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


class HomeView extends StatefulWidget {
    HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<List<Article>> futureArticleList;
  @override
  void initState() {
    super.initState();
    futureArticleList = fetchArticles();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: futureArticleList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: snapshot.data!.length ,
              itemBuilder: (BuildContext context, int index) =>
                  buildArticleCard(context, index, snapshot.data! )
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget buildArticleCard(context, index, articleList){
    final article = articleList[index];
    return ArticlePreview(article: article);
  }}


Future<List<Article>> fetchArticles() async {
  final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=fr&category=sports&page=1&apiKey=6b5555e502f94da399509bd818d0898f'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var data = jsonDecode(response.body)['articles'];
    List<Article> articleList = [];
    for(var i = 0; i < data.length; i++){
      if(data[i]['author'] != null){
        // Specific to NewsAI
        // Clean article
        String articleTitle = Article.cleanArticleTitle(data[i]['title']);
        data[i]['title'] = articleTitle;
        articleList.add(Article.fromJson(data[i]));
      }
    }

    return articleList;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



