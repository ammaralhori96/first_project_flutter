import '../screens/filter_screen.dart';
import 'package:flutter/material.dart';

class MainDrwer extends StatelessWidget {
  Widget drwerItem(String title, IconData icon, Function tapHandeler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandeler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          padding: EdgeInsets.all(20),
          child: Text(
            "Cooking Up!",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
        ),
        SizedBox(
          height: 20,
        ),
        drwerItem("Meal", Icons.restaurant, () {
          Navigator.of(context).pushNamed("/");
        }),
        drwerItem("filtres", Icons.settings, () {
          Navigator.of(context).pushNamed(FilterScreen.routeName);
        }),
      ],
    ));
  }
}
