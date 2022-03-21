import 'package:flutter/material.dart';
import 'package:sport_live/article_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArticlePreview(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyArticle article = const MyArticle(title: "Article 1");


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: article,
    );
  }
}

class MyArticle extends StatefulWidget {
  const MyArticle({Key? key, required this.title}) : super(key: key);

  final String title;

  State<MyArticle> createState() => MyArticleState();
}

class MyArticleState extends State<MyArticle> {


  @override
  Widget build(BuildContext context) {

    return Container(
      child: const Text("Well hello there",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white),
      ),

      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue,
      ),
      alignment: Alignment.center,
      width: 200,
      height: 100,


    );
  }
}*/
