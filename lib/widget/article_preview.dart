import 'package:flutter/material.dart';

class ArticlePreview extends StatefulWidget {
  const ArticlePreview({Key? key}) : super(key: key);

  @override
  _ArticlePreviewState createState() => _ArticlePreviewState();
}

class _ArticlePreviewState extends State<ArticlePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Preview'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 280,
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
                      child: const Text("Prandi est sortit de l'hôpital",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: double.infinity,
                      child: const Text("10/01/2022 - 16:31",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),)
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, bottom: 2),
                    width: double.infinity,
                    child: const Text("Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux « erreurs » "
                        "dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots "
                        "in a piece of classical Latin literature from",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12, ),
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
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 280,
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
                      child: const Text("Prandi est sortit de l'hôpital",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: double.infinity,
                      child: const Text("10/01/2022 - 16:31",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),)
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, bottom: 2),
                    width: double.infinity,
                    child: const Text("Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux « erreurs » "
                        "dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots "
                        "in a piece of classical Latin literature from",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12, ),
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

          ],
        ),
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

