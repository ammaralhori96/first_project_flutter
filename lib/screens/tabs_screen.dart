import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../screens/categorys_screen.dart';

import 'faviorate_screen.dart';

class Tabs_screen extends StatefulWidget {
  @override
  _Tabs_screenState createState() => _Tabs_screenState();
}

class _Tabs_screenState extends State<Tabs_screen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoryesScreen(), "title": "Categorys"},
    {'page': FavoriteScreen(), "title": "your favorite"},
  ];

  int _selectPageIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectPageIndex]["title"]),
      ),
      body: _pages[_selectPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Categorys"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text("Favirate"),
          ),
        ],
      ),
      drawer: MainDrwer() ,
    );
  }
}
