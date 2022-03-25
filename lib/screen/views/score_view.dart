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
    return FutureBuilder <List<SoccerMatch>>(
      future: futureListSoccerMatch,
      builder: (context, snapshot){
        if(snapshot.hasData){
          print(snapshot.data!);
          return ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: snapshot.data!.length ,
              itemBuilder: (BuildContext context, int index) =>
                  buildMatchTile(context, index, snapshot.data! )
          );
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

buildMatchTile(context, index, matchList){
  final match = matchList[index];
  return matchTile(match);

}

