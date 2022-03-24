import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_live/api_manager.dart';
import 'package:sport_live/widget/score_preview.dart';
import 'package:sport_live/models/SoccerModel.dart';

// Menu item necessary to switch sport category name.
enum MenuItem {
  item1,
  item2,
  item3,
  item4,
  item5,
}

class ChangeText extends StatefulWidget {

  ChangeTextState createState() => ChangeTextState();

}

class ChangeTextState extends State {

  String textHolder = 'Old Text';

  changeText() {
    setState(() {
      textHolder = 'New Text';
    });
  }
}


class ScoreView extends StatefulWidget {
  const ScoreView({Key? key}) : super(key: key);


  @override
  _ScoreViewState createState() => _ScoreViewState();

/*@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderPage(context),
        Expanded(
            child:
            MatchList(context)
        ),
      ],
    );
  }

  Widget MatchList(BuildContext context) {
    List allmatches = [];
    return Column(
      children: [
        ListView.builder(
          itemCount: allmatches.length,
            itemBuilder: (context, index) {
              return matchTile(allmatches[index]);
            })
      ],
    );
  }


  @override
  Widget HeaderPage(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Center(
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
          margin: const EdgeInsets.only(top: 20, right: 120),
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: 60,
          color: Color(0xffe13438),
          child: PopupMenuButton<MenuItem>(
            onSelected: (value){
              if (value == MenuItem.item1){
              } else if (value == MenuItem.item2){
              } else if (value == MenuItem.item3){
              } else if (value == MenuItem.item4){
              } else if (value == MenuItem.item5){
              }
            },
            offset: Offset(42,60),
            color: Color(0xffe13438),
            child: Row(
            children: const [
              Text("saucisse",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  ),
                ),
              ],
            ),
                  itemBuilder: (context) => [
                 PopupMenuItem(
                   value: MenuItem.item1,
                   child: Row(
                    children: const [
                      Text("Football",
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                PopupMenuItem(
                  value: MenuItem.item2,
                  child: Row(
                    children: const [
                      Text("Rugby",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: MenuItem.item3,
                  child: Row(
                    children: const [
                      Text("Basketball",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: MenuItem.item4,
                  child: Row(
                    children: const [
                      Text("Hockey",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: MenuItem.item5,
                  child: Row(
                    children: const [
                      Text("Handball",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

<<<<<<< Updated upstream
  Widget buildScoreCard(context, index) {
    final score = ScoreList[index];
    return ScorePreview(score: score);
  }
}
=======
 */

}
class _ScoreViewState extends State<ScoreView> {
  late Future<List<SoccerMatch>> futureListSoccerMatch;

  @override
  void initState() {
    super.initState();
    futureListSoccerMatch = SoccerApi().getAllMatches();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<SoccerMatch>>(
      future: futureListSoccerMatch,
      builder: (context, snapshot){
        if(snapshot.hasData){
          print(snapshot.data!);
        }
        else if (snapshot.hasError){
          return Text('${snapshot.error}');
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

}

