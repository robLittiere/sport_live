import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          title: Image.asset('images/sport_live.png', width: 72, height: 49, fit: BoxFit.cover),
          backgroundColor: const Color(0xffe13438),
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
          )
        ),
    );
  }
}