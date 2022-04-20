import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_live/models/TestModel.dart';
import 'package:sport_live/widget/score_preview.dart';

import '../score_view.dart';

final List<Test> TestList =[
  Test("test", "2-0", "test"),
  Test("test", "2-0", "test"),
  Test("test", "2-0", "test"),
  Test("test", "2-0", "test"),
];

class FootballPage extends StatelessWidget{
  const FootballPage({Key? key}) : super(key: key);


  Widget deisplayList(BuildContext context){
    return ListView.builder(
        itemCount: TestList.length,
        itemBuilder: (BuildContext context, int index) =>
            buildMatchTile(context, index, TestList)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Image.asset('assets/sport_live.png', width: 72, height: 49, fit: BoxFit.cover),
        backgroundColor: const Color(0xffe13438),
        centerTitle: true,
      ),
      body: displayFootballResult(context)
      );
  }
}

Widget displayFootballResult(BuildContext context){
  return
    Column(
      children: [
        headerPage(context),
        // Expanded(
        //     child: ListView.builder(
        //         itemCount: TestList.length,
        //         itemBuilder: (BuildContext context, int index) =>
        //
        //     )
        // ),
      ]
    );
}

// Widget buildScoreCard(context, index){
//   final score = TestList[index];
//   return
// }

Widget build(BuildContext context) {
  var widget;
  String firstTeam = widget.score.firstTeam;
  String scoreBoard = widget.score.scoreBoard;
  String secondTeam = widget.score.secondTeam;

  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
          padding: const EdgeInsets.only(left: 30),
          margin: const EdgeInsets.only(bottom: 40),
          width: 150,
          height: 50,
          color: Color(0xffe13438),
          child: Center(
            child: Text(
              firstTeam,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 40),
        width: 110,
        height: 50,
        color: Colors.white,
        child: Center(
          child: Text(
            scoreBoard,
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
        child: Center(
          child: Text(
            secondTeam,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}