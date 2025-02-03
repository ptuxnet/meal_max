import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_item.dart';
import 'package:meal_app/data/dummy_data.dart';

// Assuming dummyCategories is defined in dummy_data.dart

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  void _selectCategory(BuildContext context, Category categroy) {
    final filteredMeals = dummyMeals
        .where(
          (meal) => meal.categories.contains(categroy.id),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          meals: filteredMeals,
          title: categroy.title ?? 'Default Title',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Meal App"),
      ),
      body: SafeArea(
        child: GridView(
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
            ]),
      ),
    );
  }
}
