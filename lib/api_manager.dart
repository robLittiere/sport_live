import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:sport_live/models/SoccerModel.dart';

class SoccerApi {

  static var apiSoccerUrl = "https://v3.football.api-sports.io/fixtures?season=2021&league=61&from=2022-03-17&to=2022-03-24";

  static const headers = {
    'x-rapidapi-key': "f2cc166b6b3aedeaefbdd22ee6d90412"
  };


  Future<List> getAllMatches() async {
    // Get date now
    DateTime now = DateTime.now();
    var todayFormated = DateFormat('yyyy-MM-dd').format(now);

    var beforeDate = now.subtract(const Duration(days: 7));
    var beforeDateFormated = DateFormat('yyyy-MM-dd').format(beforeDate);

    // Add date to string
    //apiSoccerUrl += "&from=" + beforeDateFormated + "&to=" + todayFormated;


    final res = await http.get(Uri.parse(apiSoccerUrl), headers: headers);
    var body;

    if(res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      List<SoccerMatch> matches = matchesList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();
      var reversedMatches = List.from(matches.reversed);
      return reversedMatches;
    }
    else {
      throw Exception('Failed to load Matches');
    }

  }
}