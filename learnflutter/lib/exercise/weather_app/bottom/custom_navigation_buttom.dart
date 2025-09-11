import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/exercise/weather_app/pages/home/weather_homepage.dart';
import 'package:learnflutter/exercise/weather_app/pages/list/weather_list.dart';

class CustomButtomNavigation extends StatefulWidget {
  const CustomButtomNavigation({super.key});

  @override
  State<CustomButtomNavigation> createState() => _CustomButtomNavigationState();
}

class _CustomButtomNavigationState extends State<CustomButtomNavigation> {
  late List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.list_bullet),
      label: 'List',
    ),
  ];

  var currentPage = 0;
  List<Widget> pages = [WeatherHomePage(), WeatherList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: bottomItems,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            debugPrint('index: $index');
            currentPage = index;
          });
        },
      ),
    );
  }
}
