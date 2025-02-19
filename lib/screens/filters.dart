import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/provider/filters_provider.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  ConsumerState<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _glutenFreeFilterset = false;
  var _lactoseFreeFilterset = false;
  var _vegetarianFilterset = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    super.initState();
    final activeFilters = ref.read(filtersProvider);
    _glutenFreeFilterset = activeFilters[Filters.glutenFree]!;
    _lactoseFreeFilterset = activeFilters[Filters.lactoseFree]!;
    _vegetarianFilterset = activeFilters[Filters.vegetarian]!;
    _veganFilterSet = activeFilters[Filters.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        // ignore: deprecated_member_use
        body: WillPopScope(
          onWillPop: () async {
            ref.read(filtersProvider.notifier).setFilters({
              Filters.glutenFree: _glutenFreeFilterset,
              Filters.lactoseFree: _lactoseFreeFilterset,
              Filters.vegetarian: _vegetarianFilterset,
              Filters.vegan: _veganFilterSet,
            });
            return true;
          },
          child: Column(
            children: [
              SwitchListTile(
                value: _glutenFreeFilterset,
                onChanged: (isChecked) {
                  setState(() {
                    _glutenFreeFilterset = isChecked;
                  });
                },
                title: Text(
                  'Gluten-free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                subtitle: Text(
                  'Only include gluten-free meals.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
              SwitchListTile(
                value: _lactoseFreeFilterset,
                onChanged: (isChecked) {
                  setState(() {
                    _lactoseFreeFilterset = isChecked;
                  });
                },
                title: Text(
                  'Lactose-free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                subtitle: Text(
                  'Only include lactose-free meals.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
              SwitchListTile(
                value: _vegetarianFilterset,
                onChanged: (isChecked) {
                  setState(() {
                    _vegetarianFilterset = isChecked;
                  });
                },
                title: Text(
                  'Vegetarian',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                subtitle: Text(
                  'Only include vegetarian meals.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
              SwitchListTile(
                value: _veganFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _veganFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Vegan',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                subtitle: Text(
                  'Only include vegan meals.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: const EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
            ],
          ),
        ));
  }
}
