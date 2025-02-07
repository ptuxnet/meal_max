import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_item.dart';
import 'package:meal_app/data/dummy_data.dart';

// Assuming dummyCategories is defined in dummy_data.dart

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
    required this.onToggleFavorite,
    required this.availableMeals,
  });

  final void Function(Meal meal) onToggleFavorite;
  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, Category categroy) {
    final filteredMeals = availableMeals
        .where(
          (meal) => meal.categories.contains(categroy.id),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          onToggleFavorite: onToggleFavorite,
          meals: filteredMeals,
          title: categroy.title ?? 'Default Title',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(18),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0),
      children: [
        for (final category in availableCategories)
          CategoryItem(
              color: category.color,
              id: category.id,
              title: category.title,
              category: category,
              onSelectCategory: () => _selectCategory(context, category))
      ],
    );
  }
}
