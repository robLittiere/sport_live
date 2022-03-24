import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Article {
  String? title;
  String? author;
  String? resume;
  String? articleContent;
  String? imageUrl;
  String? articleLink;
  String? date;
  String? source;

  Article(this.title, this.author, this.date, this.resume, this.imageUrl, this.articleLink, this.articleContent, this.source);

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      json['title'],
      json['author'],
      json['publishedAt'],
      json['description'],
      json['urlToImage'],
      json['url'],
      json['content'],
      json['source']['name']
    );
  }

  static cleanArticleTitle(String articleTitle){
    var title  = articleTitle.split("-")[0];
    return title;
  }

  static cleanArticleContent(){

  }

  formatDate(){
    var parsedDate = DateTime.parse(date!);
    date = DateFormat('yyyy-MM-dd hh:mm').format(parsedDate);

  }
}