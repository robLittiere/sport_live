import 'package:flutter/material.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child : Column(
        mainAxisSize : MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("PHP est toujours dans la course",
          style: TextStyle(
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
          ),
          descriptionSection,
          contentText,
          const Text('Lire la suite...',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.grey
            ),
          ),
          authorSection,


        ],
      )
    );
  }
}

Widget descriptionSection = Row(
  mainAxisSize : MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: const [
        Text("10/01/2022 - 16:31",
          style: TextStyle(
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

Widget contentText = Container(
  padding: const EdgeInsets.only(top: 15, bottom: 10),
  child: const Text(
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical "
        "Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-S"
        "ydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from"
        " a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32."
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical "
        "Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-S"
        "ydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from"
        " a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32."
    ,
    textAlign: TextAlign.justify,
    style: TextStyle(
      color : Colors.black,


    ),
  ),
);

Widget forwardSection = Container(
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
          children: const [
            Text("Robin Littiere - L'Equipe",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ]
      )
    ],
  ),
);

Widget authorSection = Container(
  padding: const EdgeInsets.only(top: 10, bottom: 15),
  child: const Align(
    alignment : Alignment.centerRight,
    child: Text("Robin Littiere - L'équipe"),
  ),
);

