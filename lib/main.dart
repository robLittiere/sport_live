import 'package:flutter/material.dart';
import 'package:sport_live/screen/home_screen.dart';
import 'package:sport_live/widget/article_preview.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SportLive',
      debugShowCheckedModeBanner: false,
      home: HomeScreen() 
    );
  }
}

class MyArticle extends StatefulWidget {
  const MyArticle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
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
}
