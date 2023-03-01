import 'package:flutter/material.dart';

import 'content_page.dart';
import 'menu_page.dart';
import 'search_element.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          MenuScreen(),
          Stack(
            children: [
              Carousel(),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(child: SearchBar()),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
