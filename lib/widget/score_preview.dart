import 'package:flutter/material.dart';
import 'package:sport_live/models/SoccerModel.dart';
import 'package:sport_live/models/TestModel.dart';

Widget matchTile(SoccerMatch match) {

  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;
  homeGoal ??= 0;
  awayGoal ??= 0;

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(

          height: 50,
          color: const Color(0xffe13438),
          child: Text(
              match.home.name!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
        ),
        Image.network(
          match.home.logoUrl!,
          width: 36,
        ),
        Container(
          height: 50,
          color: Colors.white,
          child: Text(
            "${homeGoal} - $awayGoal",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        ),
        Image.network(
          match.away.logoUrl!,
          width: 36,
        ),
        Container(
          height: 50,
          color: const Color(0xffe13438),
            child: Text(
              match.away.name!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )
        ),
      ],
    ),
  );
}








/*
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 30),
            margin: const EdgeInsets.only(bottom: 40),
            width: MediaQuery.of(context).size.width * 0.36,
            height: 50,
            color: Color(0xffe13438),
            child: Center(
              child: Text(
                firstTeam,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          width: MediaQuery.of(context).size.width * 0.28,
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text(
              scoreBoard,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30),
          margin: const EdgeInsets.only(bottom: 40),
          width: MediaQuery.of(context).size.width * 0.36,
          height: 50,
          color: Color(0xffe13438),
          child: Center(
            child: Text(
              secondTeam,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
*/
