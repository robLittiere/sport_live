// import 'dart:convert';
// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/Article.dart';
// import 'package:http/http.dart' as http ;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static final List<Article> ArticleList = [
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Djokovic admet ses erreurs", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Digne, Martial, Ndombele, Mukiele, les Bleus concernés par des transferts", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Digne, Martial, Ndombele, Mukiele, les Bleus concernés par des transferts", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from")
  ];

  // getNewsData() async{
  //   var response = await http.get(Uri.http('livescore6.p.rapidapi.com', 'matches/v2/list-live'),
  //           headers: {
  //           'x-rapidapi-host': 'api-football-v1.p.rapidapi.com',
  //           'x-rapidapi-key': '<YOU_API_KEY>'}
  //       );
  //   var jsonData = jsonDecode(response.body);
  //   log("data: $jsonData");
  //   return jsonData;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: ArticleList.length ,
        itemBuilder: (BuildContext context, int index) =>
            buildArticleCard(context, index),
      ),

    )
    ;
  }

  Widget buildArticleCard(context, index){
    final article = ArticleList[index];
    return Card(
      child: Column(
        children: <Widget>[
          Text(article.title),
          Text(DateFormat('dd/MM/yyyy').format(article.date).toString()),
          Text(article.autor),
          Text(article.resume)
          // Text(getNewsData())
        ],
      ),
    );
  }



}