import 'package:flutter/material.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meal_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(22, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(22, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctext) => CategoriesScreen(),
        CategoryMealScreen.routeName: (ctext) => CategoryMealScreen(),
        MealdetailScreen.routeName: (ctext) => MealdetailScreen(),
      },
      onGenerateRoute: ((settings) {
        print(settings.arguments);
        // return MaterialPageRoute(builder: (ct) => CategoriesScreen());
      }),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ct) => CategoriesScreen());
      },
    );
  }
}
