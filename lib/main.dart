import './screens/meal_deatil.dart';

import './screens/category_meals_screen.dart';
import './screens/categorys_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(255, 254, 229, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(255, 254, 229, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold,
              ))),
      //home: MyHomePage(),
      routes: {
        '/': (context) => CategoryesScreen(),
        Category_meals_screen.routeName: (context) => Category_meals_screen(),
        MealDeatil.routeName: (context) => MealDeatil(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail App"),
      ),
      body: null,
    );
  }
}
