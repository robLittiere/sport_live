import 'package:flutter/material.dart';
import 'package:sport_live/screen/views/home_view.dart';
import 'package:sport_live/screen/views/score_view.dart';
import 'package:sport_live/screen/views/article_item_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/sport_live.png', width: 72, height: 49, fit: BoxFit.cover),
          backgroundColor: const Color(0xffe13438),
          centerTitle: true,
        ),
        body: PageView(
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          controller: _pageController,
          children: const <Widget>[
            HomeView(),
            ScoreView(),
            ArticleItemView(),
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState((){
              _currentIndex = index;
            });
            _pageController.jumpToPage(_currentIndex);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grading_outlined),
              label: 'Score',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profil',
            )
          ]
        ),
    );
  }
}

