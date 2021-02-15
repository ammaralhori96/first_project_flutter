import 'package:first_project_flutter/models/meal.dart';
import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';


class Category_meals_screen extends StatefulWidget {
  static const routeName = 'category_meals';

  final List<Meal> availableMeals;

  Category_meals_screen(this.availableMeals);

  @override
  _Category_meals_screenState createState() => _Category_meals_screenState();
}

class _Category_meals_screenState extends State<Category_meals_screen> {
  String categoryTitle;
  List<Meal> desplayedMeals;

  @override
  void didChangeDependencies() {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    categoryTitle = routeArg['title'];
    desplayedMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  void _removeMail(String mealId) {
    setState(() {
      desplayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: desplayedMeals[index].id,
              duration: desplayedMeals[index].duration,
              title: desplayedMeals[index].title,
              imageUrl: desplayedMeals[index].imageUrl,
              complexity: desplayedMeals[index].complexity,
              affordability: desplayedMeals[index].affordability,
              removeItem: _removeMail,
            );

            // Text(
            //   categoryMeals[index].title,
            //   style: TextStyle(color: Colors.black),
            // );
          },
          itemCount: desplayedMeals.length,
        ),
      ),
    );
  }
}
