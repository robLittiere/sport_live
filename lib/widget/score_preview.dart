import 'package:flutter/material.dart';
import 'package:sport_live/models/SoccerModel.dart';

Widget matchTile(SoccerMatch match, BuildContext context) {

  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;
  homeGoal ??= 0;
  awayGoal ??= 0;

  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        Container(
          height: 50,
          color: const Color(0xffe13438),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Text(
                  match.home.name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.33,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.only(right: 6),
                child: Row(
                  children: [
                    Image.network(
                      match.home.logoUrl!,
                      width: 36,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text(
                    "${homeGoal} - $awayGoal",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    Image.network(
                      match.away.logoUrl!,
                      width: 36,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          color: const Color(0xffe13438),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                child: Text(
                  match.away.name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}


/*
Container(
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
*/




