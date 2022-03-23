import 'package:flutter/material.dart';
import 'package:sport_live/widget/full_article.dart';

import '../../models/Article.dart';



class ArticleItemView extends StatelessWidget {
  final Article article;
  const ArticleItemView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/sport_live.png', width: 72, height: 49, fit: BoxFit.cover),
        backgroundColor: const Color(0xffe13438),
        centerTitle: true,
      ),
      body: ArticleView(article: article),
    );;
  }
}