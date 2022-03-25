import 'package:flutter/cupertino.dart';
import 'package:sport_live/models/TestModel.dart';

import '../score_view.dart';

class FootballPage extends StatelessWidget{
  const FootballPage({Key? key}) : super(key: key);

  static final List<Test> TestList =[
    Test("test", "2-0", "test"),
    Test("test", "2-0", "test"),
    Test("test", "2-0", "test"),
    Test("test", "2-0", "test"),
  ];

  Widget deisplayList(BuildContext context){
    return ListView.builder(
        itemCount: TestList.length,
        itemBuilder: (BuildContext context, int index) =>
            buildMatchTile(context, index, TestList)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        headerPage(context),
        deisplayList(context)
      ],
    );
  }
}