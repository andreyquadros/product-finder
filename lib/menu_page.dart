import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/HomeController.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool _showMenuScreen = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 22,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Onde Encontrar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                  onTap: () => Get.find<HomeController>().goToLoginPage(),
                )
              ],
            ),
          );
        });
  }
}
