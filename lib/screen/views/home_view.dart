import 'package:flutter/material.dart';
import 'package:sport_live/widget/article_preview.dart';
import '../../models/Article.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static final List<Article> ArticleList = [
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Djokovic admet ses erreurs", "autor1", DateTime.now(), "Djoko le meilleur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Digne, Martial, Ndombele, Mukiele, les Bleus concernés par des transferts", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Digne, Martial, Ndombele, Mukiele, les Bleus concernés par des transferts", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from"),
    Article("Pourquoi Benzema est plus précieux que jamais au Real de Madrid", "autor1", DateTime.now(), "Dans un long communiqué publié sur son compte Instagram, Novak Djokovic a admis avoir commis deux erreurs  dans son service Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: ArticleList.length ,
      itemBuilder: (BuildContext context, int index) =>
          buildArticleCard(context, index)
    );
  }

  Widget buildArticleCard(context, index){
    final article = ArticleList[index];
    return ArticlePreview(article: article);
  }

}