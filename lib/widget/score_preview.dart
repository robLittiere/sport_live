import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Score.dart';

class ScorePreview extends StatefulWidget {
  final Score score;
  const ScorePreview({Key? key, required this.score, }) : super(key: key);

  @override
  _ScorePreviewState createState() => _ScorePreviewState();
}

class _ScorePreviewState extends State<ScorePreview> {
  @override
  Widget build(BuildContext context) {
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
}

/*
Row(
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
Text(firstTeam,
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
child: Text(scoreBoard,
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
Text(secondTeam,
style: TextStyle(
fontSize: 20,
color: Colors.white,
),)
],
),
*/
