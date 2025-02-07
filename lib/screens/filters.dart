import 'package:flutter/material.dart';

enum Filters {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({
    super.key,
    required this.currenfilters,
  });

  final Map<Filters, bool> currenfilters;

  @override
  FiltersScreenState createState() => FiltersScreenState();
}

class FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterset = false;
  var _lactoseFreeFilterset = false;
  var _vegetarianFilterset = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    super.initState();
    _glutenFreeFilterset = widget.currenfilters[Filters.glutenFree]!;
    _lactoseFreeFilterset = widget.currenfilters[Filters.lactoseFree]!;
    _vegetarianFilterset = widget.currenfilters[Filters.vegetarian]!;
    _veganFilterSet = widget.currenfilters[Filters.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        body: WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop(
              {
                Filters.glutenFree: _glutenFreeFilterset,
                Filters.lactoseFree: _lactoseFreeFilterset,
                Filters.vegetarian: _vegetarianFilterset,
                Filters.vegan: _veganFilterSet,
              },
            );
            return false;
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
