import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sport_live/screen/home_screen.dart';
import 'package:sport_live/widget/article_preview.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    stdout.writeln('print me');
    stdout.writeln('print me');
    stdout.writeln('Coucou Rob');

    return MaterialApp(
      title: 'SportLive',
      theme: ThemeData(fontFamily: 'DMSans'),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}
