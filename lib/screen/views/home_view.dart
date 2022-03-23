
import 'package:flutter/material.dart';
import 'package:sport_live/api/news.dart';
import '../../models/Article.dart';

class HomeView extends StatelessWidget {

  var newslist;

  List<ArticleModel> articles = <ArticleModel>[] ;

  void getNews() async {
    News news = News();
    await news.getNews();
    newslist = news.news;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: ListView.builder(
            itemCount: articles.length ,
            itemBuilder: (BuildContext context, int index) =>
                buildArticleCard(context, index),
          ),
    );

  }

  Widget buildArticleCard(context, index){
    final article = articles[index];
    return Card(
      child: Column(
        children: <Widget>[
          Text(article.title),
          Text(article.publishedAt),
          Text(article.author),
          Text(article.description)
          // Text(getNewsData())
        ],
      ),
    );
  }



}


