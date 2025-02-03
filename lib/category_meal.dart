import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String? categoryId;
  final String? categoryTitle;

  const CategoryMealsScreen({
    super.key,
    this.categoryId,
    this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle.toString(),
        ),
      ),
      body: const Center(
        child: Text('The Recipes for the category!'),
      ),
    );
  }
}
