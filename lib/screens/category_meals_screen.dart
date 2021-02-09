import '../models/meal.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class Category_meals_screen extends StatefulWidget {
  static const routeName = 'category_meals';

  @override
  _Category_meals_screenState createState() => _Category_meals_screenState();
}

class _Category_meals_screenState extends State<Category_meals_screen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(
              categoryMeals[index].title,
              style: TextStyle(color: Colors.black),
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
