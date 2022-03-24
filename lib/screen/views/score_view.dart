import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_live/api_manager.dart';
import 'package:sport_live/widget/score_preview.dart';
import 'package:sport_live/models/SoccerModel.dart';


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
          child: PopupMenuButton(
            offset: Offset(50,50),
            color: Colors.blue,
            child: Row(
            children: const [
              Text("saucisse vertigineuse",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  ),
                ),
              ],
            ),
              itemBuilder: (context) => [
                 PopupMenuItem(
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
                  child: Row(
                    children: const [
                      Text("Tennis",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
                PopupMenuItem(
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
                  child: Row(
                    children: const [
                      Text("Basket d'Alpha",
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

