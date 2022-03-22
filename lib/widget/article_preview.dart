import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Article.dart';

class ArticlePreview extends StatefulWidget {
  final Article article;
  const ArticlePreview({Key? key, required this.article, }) : super(key: key);

  @override
  _ArticlePreviewState createState() => _ArticlePreviewState();
}

class _ArticlePreviewState extends State<ArticlePreview> {
  @override
  Widget build(BuildContext context) {
    String content = widget.article.resume;
    String author = widget.article.author;
    var date = DateFormat('dd/MM/yyyy').format(widget.article.date).toString();
    String title = widget.article.title;
    String articleDescription = '';

    if(content.length > 185){
      articleDescription = content.substring(0, 185) + '...';
    }

    return SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15, left: 15),
              height: 312,
              child: Column(
                children:  [
                  Container(
                    height: 146,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://picsum.photos/1920/1080"),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: Text(title,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: double.infinity,
                      child: Text(date,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),)
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, bottom: 2),
                    width: double.infinity,
                    child: Text(articleDescription,
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 12, ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Text("Football",
                            style: TextStyle(fontSize: 12, backgroundColor: Colors.grey)
                        ),
                        Text("Actu",
                          style: TextStyle(fontSize: 12, backgroundColor: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Color(0xFFD8D8D8),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
            )
          ],
        ),
    );
  }
}


class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
