import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:sport_live/models/SoccerModel.dart';

class SoccerApi {

  static const String apiSoccerUrl = "https://v3.football.api-sports.io/fixtures?season=2021&league=39";

  static const headers = {
    'x-rapidapi-key': "a0f4c5c272adfaf2f50de42c8677c597"
  };


  Future<List<SoccerMatch>> getAllMatches() async {
    final res = await http.get(Uri.parse(apiSoccerUrl), headers: headers);
    var body;

    if(res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      List<SoccerMatch> matches = matchesList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();

      return matches;
    }
    else {
      throw Exception('Failed to load Matches');
    }

  }
}