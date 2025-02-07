import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];

  void _toggleMealfavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    setState(() {
      if (isExisting) {
        _favoriteMeals.remove(meal);
        final snackBar = SnackBar(
          content: Text('${meal.title} removed from favorites'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _favoriteMeals.add(meal);
              });
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Timer(Duration(seconds: 4), () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        });
      } else {
        _favoriteMeals.add(meal);
        final snackBar = SnackBar(
          content: Text('${meal.title} added to favorites'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _favoriteMeals.remove(meal);
              });
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Timer(
          Duration(seconds: 4),
          () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        );
      }
    });
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoryScreen(
      onToggleFavorite: _toggleMealfavoriteStatus,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFavorite: _toggleMealfavoriteStatus,
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
