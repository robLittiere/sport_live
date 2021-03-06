import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/Article.dart';

class ArticleView extends StatelessWidget {
  final Article article;
  const ArticleView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child : Column(
        mainAxisSize : MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(article.title!,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),),
          const Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            width: MediaQuery.of(context).size.width,
            height: 200 ,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(article.imageUrl!),
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
          ),
          descriptionSection(article),
          contentText(article),
          GestureDetector(
            onTap: () {
              _redirectToUrl(article.articleLink);
            },
            child : const Text('Lire la suite...',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.grey
              ),
            ),
          ),
          authorSection(article),


        ],
      )
    );
  }
}

Widget descriptionSection(Article article){
  return Row(
    mainAxisSize : MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text(article.date!,
            style: const TextStyle(
                color: Colors.grey
            ),
          ),
        ],
      ),
      Column(
          children: const [
            Text("2 min de lecture",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ]
      )
    ],
  );
}

Widget contentText(Article article) {
  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 10),
    child: Text(
      article.articleContent!,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

Widget forwardSection(Article article) {
  return Container(
    child: Row(
      mainAxisSize : MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text("Continuer la lecture",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        ),
        Column(
            children: [
              Text(article.author!,
                style: const TextStyle(
                    color: Colors.grey
                ),
              ),
            ]
        )
      ],
    ),
  );
}

Widget authorSection(Article article) {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 15),
    child: Align(
      alignment : Alignment.centerRight,
      child: Text("${article.author} - ${article.source}"),
    ),
  );
}

_redirectToUrl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}

