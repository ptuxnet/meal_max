import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/provider/favorites_provider.dart';

class MealDetailsScreen extends ConsumerWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          actions: [
            IconButton(
              onPressed: () {
                final favoriteMealsNotifier =
                    ref.read(favoriteMealsProvider.notifier);
                final wasAdded =
                    favoriteMealsNotifier.toggleMealFavoriteStatus(meal);
                final snackBar = SnackBar(
                  content: Text(
                    wasAdded
                        ? '${meal.title} added to favorites'
                        : '${meal.title} removed from favorites',
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Consumer(
                builder: (context, ref, child) {
                  final isFavorite =
                      ref.watch(favoriteMealsProvider).contains(meal);
                  return Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: isFavorite ? Colors.red : null,
                  );
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  meal.imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Ingredients',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 14),
            for (int i = 0; i < meal.ingredients.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        '${i + 1}',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        meal.ingredients[i],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Steps',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 14),
            for (int i = 0; i < meal.steps.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        '${i + 1}',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        meal.steps[i],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ));
  }
}
