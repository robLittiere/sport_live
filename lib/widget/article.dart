import 'package:flutter/material.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
      child : Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Titre de l'Actu",
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),),
          Divider(
            height: 20,
            thickness: 1,
            color: Colors.black,
          ),


        ],
      )
    );
  }
}