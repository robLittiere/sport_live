import 'package:flutter/material.dart';


class ScoreView extends StatelessWidget {
  const ScoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: Column(
         children: [
           Container(
             margin: const EdgeInsets.only(top: 20),
             child: Center(
               child: Text(
                 "Résultats",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.black87
                 ),
               ),
             ),
           ),
           Container(
             padding: const EdgeInsets.only(left: 30),
             margin: const EdgeInsets.only(top: 20, right: 120, bottom: 40),
             width: MediaQuery.of(context).size.width,
             height: 60,
             color: Color(0xffe13438),
             child: Row(
               children: [
                 Text("Football",
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                 ),),
               ],
             ),
           ),
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
           sportsLabel,
         ],
       ),
     );


  }
}

Widget sportsLabel = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      padding: const EdgeInsets.only(left: 30),
      margin: const EdgeInsets.only(bottom: 40),
      width: 150,
      height: 50,
      color: Color(0xffe13438),
      child: Row(
        children: [
          Text("Paris-SG",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),)
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 40),
      width: 100,
      height: 50,
      color: Colors.white,
      child: Center(
        child: Text(
          "0-0",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
          ),
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.only(left: 30),
      margin: const EdgeInsets.only(bottom: 40),
      width: 150,
      height: 50,
      color: Color(0xffe13438),
      child: Row(
        children: [
          Text("Marseille",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),)
        ],
      ),
    ),
  ],
);

/*
Column(
mainAxisSize: MainAxisSize.max,
children: [
Text("Résultats",
style: TextStyle(
fontSize: 30,
color: Colors.black87,
),),


Container(
padding: const EdgeInsets.only(left: 30),
margin: const EdgeInsets.only(top: 80, right: 120, bottom: 40),
width: MediaQuery.of(context).size.width,
height: 60,
color: Color(0xffe13438),
child: Row(
children: [
Text("Football",
style: TextStyle(
fontSize: 20,
color: Colors.white,
),)
],
),
),
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel,
sportsLabel
],

*/
