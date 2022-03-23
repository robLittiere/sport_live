import 'package:flutter/cupertino.dart';

class Article {
  String? title;
  String? author;
  String? resume;
  String? imageUrl;
  String? articleLink;
  String? date;

  Article(this.title, this.author, this.date, this.resume, this.imageUrl, this.articleLink );

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      json['title'],
      json['author'],
      json['publishedAt'],
      json['description'],
      json['urlToImage'],
      json['url'],
    );
  }

  static cleanArticleTitle(String articleTitle){
    var title  = articleTitle.split("-")[0];
    return title;
  }
}