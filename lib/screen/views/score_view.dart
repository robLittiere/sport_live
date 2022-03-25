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



class ScoreView extends StatefulWidget {
  const ScoreView({Key? key}) : super(key: key);


  @override
  _ScoreViewState createState() => _ScoreViewState();


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
    return Column(
        children: [
          headerPage(context),
          Expanded(
            child: FutureBuilder <List<SoccerMatch>>(
              future: futureListSoccerMatch,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data!);
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) =>
                          buildMatchTile(context, index, snapshot.data!)
                  );
                }
                else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          )
        ]
    );
  }
}

buildMatchTile(context, index, matchList){
  final match = matchList[index];
  return matchTile(match);

}

Widget headerPage(BuildContext context) {
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
        width: MediaQuery.of(context).size.width,
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

