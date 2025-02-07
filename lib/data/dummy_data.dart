import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/model/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  // New list of meals
  Meal(
    id: 'm11',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Tiramisu',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Tiramisu_-_Raffaele_Diomede.jpg/1280px-Tiramisu_-_Raffaele_Diomede.jpg',
    duration: 40,
    ingredients: [
      '6 Egg Yolks',
      '3/4 cup White Sugar',
      '2/3 cup Milk',
      '1 1/4 cups Heavy Cream',
      '1/2 teaspoon Vanilla Extract',
      '1 pound Mascarpone Cheese',
      '1/4 cup Strong Brewed Coffee, cooled',
      '2 tablespoons Rum',
      '2 (3 ounce) packages Ladyfinger Cookies',
      '1 tablespoon Unsweetened Cocoa Powder',
    ],
    steps: [
      'In a medium saucepan, whisk together egg yolks and sugar until well blended. Whisk in milk and cook over medium heat, stirring constantly, until mixture boils. Boil gently for 1 minute, remove from heat and allow to cool slightly. Cover tightly and chill in refrigerator 1 hour.',
      'In a medium bowl, beat cream with vanilla until stiff peaks form.',
      'Whisk mascarpone into yolk mixture until smooth.',
      'In a small bowl, combine coffee and rum. Quickly dip each ladyfinger into coffee mixture and arrange 1 layer of soaked ladyfingers in bottom of a 7x11 inch dish.',
      'Spread half of mascarpone mixture over ladyfingers, then half of whipped cream over that. Repeat layers and sprinkle with cocoa. Cover and refrigerate 4 to 6 hours, until set.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c3',
      'c7',
    ],
    title: 'Blueberry Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.thespruceeats.com/thmb/wbbNPKejv6sKKD7GhZVKI4kMn5Y=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/blueberry-ricotta-pancakes-541279742-5ab2d59d04d1cf0036f81d80.jpg',
    duration: 25,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
      '1 Cup Blueberries',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Fold in the blueberries.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c5',
      'c10',
    ],
    title: 'Caesar Salad',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.loveandlemons.com/wp-content/uploads/2024/12/caesar-salad-recipe-758x1024.jpg',
    duration: 20,
    ingredients: [
      '1/2 Cup Olive Oil',
      '1/4 Cup Lemon Juice',
      '1 Clove Garlic, minced',
      '1 Teaspoon Worcestershire Sauce',
      '1 Teaspoon Dijon Mustard',
      '1/2 Teaspoon Salt',
      '1/4 Teaspoon Black Pepper',
      '1 Head Romaine Lettuce, chopped',
      '1/2 Cup Parmesan Cheese, grated',
      '1 Cup Croutons',
    ],
    steps: [
      'In a small bowl, whisk together olive oil, lemon juice, garlic, Worcestershire sauce, mustard, salt, and pepper.',
      'In a large bowl, combine lettuce, Parmesan cheese, and croutons.',
      'Pour dressing over salad and toss to coat.',
      'Serve immediately.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c1',
      'c9',
    ],
    title: 'Quiche Lorraine',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.thespruceeats.com/thmb/zK4G-EK1eCC4Fvh7yE1t1Ugr-Vo=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/quiche-lorraine-recipe-1375559-hero-01-9018b5d6cb8e415a945ccca6b801bb61.jpg',
    duration: 60,
    ingredients: [
      '1 Pie Crust',
      '6 Slices Bacon',
      '1 Onion, chopped',
      '1 1/2 Cups Swiss Cheese, shredded',
      '1 Tablespoon All-purpose Flour',
      '1 1/2 Cups Half-and-half Cream',
      '4 Eggs',
      '1/4 Teaspoon Salt',
      '1/4 Teaspoon White Sugar',
      '1/4 Teaspoon Ground Black Pepper',
    ],
    steps: [
      'Preheat oven to 450°F (230°C).',
      'Place pie crust in a pie pan, and bake in preheated oven for 8 minutes.',
      'In a large skillet, cook bacon until crisp. Remove bacon, and crumble. Reserve 1 tablespoon of bacon drippings.',
      'Cook onion in reserved bacon drippings until tender; drain and set aside.',
      'In a medium bowl, mix together bacon, onions, and Swiss cheese. Add flour, and toss to coat.',
      'In a separate bowl, whisk together half-and-half, eggs, salt, sugar, and pepper. Pour egg mixture over cheese mixture in pie crust.',
      'Bake in preheated oven for 15 minutes. Reduce heat to 300°F (150°C), and bake for 30 minutes, or until filling is set.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c2',
      'c6',
    ],
    title: 'Chicken Alfredo',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://gimmedelicious.com/wp-content/uploads/2024/10/Skinny-Chicken-Broccoli-Alfredo.jpg',
    duration: 30,
    ingredients: [
      '2 Chicken Breasts, sliced',
      '1 Tablespoon Olive Oil',
      '2 Cups Heavy Cream',
      '1 Cup Parmesan Cheese, grated',
      '1 Teaspoon Garlic Powder',
      '1/2 Teaspoon Salt',
      '1/4 Teaspoon Black Pepper',
      '1 Pound Fettuccine Pasta',
      '1/4 Cup Fresh Parsley, chopped',
    ],
    steps: [
      'In a large skillet, heat olive oil over medium-high heat. Add chicken and cook until no longer pink, about 5-7 minutes.',
      'Reduce heat to medium and add heavy cream, Parmesan cheese, garlic powder, salt, and pepper. Stir until cheese is melted and sauce is smooth.',
      'Cook pasta according to package instructions. Drain and add to skillet with sauce. Toss to coat.',
      'Garnish with parsley and serve immediately.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c3',
      'c8',
    ],
    title: 'Beef Stir Fry',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.thecookierookie.com/wp-content/uploads/2022/01/beef-stir-fry-recipe-3.jpg',
    duration: 25,
    ingredients: [
      '1 Pound Beef Sirloin, sliced into thin strips',
      '2 Tablespoons Soy Sauce',
      '1 Tablespoon Cornstarch',
      '2 Tablespoons Vegetable Oil',
      '1 Red Bell Pepper, sliced',
      '1 Green Bell Pepper, sliced',
      '1 Onion, sliced',
      '2 Cloves Garlic, minced',
      '1/4 Cup Beef Broth',
      '2 Tablespoons Hoisin Sauce',
      '1 Teaspoon Sesame Oil',
    ],
    steps: [
      'In a medium bowl, combine beef, soy sauce, and cornstarch. Toss to coat.',
      'In a large skillet, heat vegetable oil over medium-high heat. Add beef and cook until browned, about 3-5 minutes. Remove from skillet and set aside.',
      'In the same skillet, add bell peppers, onion, and garlic. Cook until vegetables are tender, about 5-7 minutes.',
      'Return beef to skillet and add beef broth, hoisin sauce, and sesame oil. Stir to combine and cook until heated through, about 2-3 minutes.',
      'Serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c4',
      'c9',
    ],
    title: 'Crepes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.iheartnaptime.net/wp-content/uploads/2022/12/crepes-i-heart-naptime.jpg',
    duration: 20,
    ingredients: [
      '1 Cup All-purpose Flour',
      '2 Eggs',
      '1/2 Cup Milk',
      '1/2 Cup Water',
      '1/4 Teaspoon Salt',
      '2 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large mixing bowl, whisk together flour and eggs. Gradually add in milk and water, stirring to combine. Add salt and butter; beat until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each crepe. Tilt the pan with a circular motion so that the batter coats the surface evenly.',
      'Cook the crepe for about 2 minutes, until the bottom is light brown. Loosen with a spatula, turn and cook the other side. Serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c5',
      'c10',
    ],
    title: 'Greek Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.allrecipes.com/thmb/SkWzUVjyC9DRoefa4t7tjkPS0no=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/14373-GreekSaladi-mfs-4X3-0354-e8388819cafa4bae843ea433258aa03d.jpg',
    duration: 15,
    ingredients: [
      '3 Tomatoes, chopped',
      '1 Cucumber, chopped',
      '1 Red Onion, sliced',
      '1 Green Bell Pepper, chopped',
      '1/2 Cup Kalamata Olives',
      '1/2 Cup Feta Cheese, crumbled',
      '1/4 Cup Olive Oil',
      '1 Tablespoon Red Wine Vinegar',
      '1 Teaspoon Dried Oregano',
      'Salt and Pepper to taste',
    ],
    steps: [
      'In a large bowl, combine tomatoes, cucumber, red onion, bell pepper, olives, and feta cheese.',
      'In a small bowl, whisk together olive oil, red wine vinegar, oregano, salt, and pepper.',
      'Pour dressing over salad and toss to coat.',
      'Serve immediately.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm19',
    categories: [
      'c6',
      'c8',
    ],
    title: 'Pad Thai',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.feastingathome.com/wp-content/uploads/2017/08/Thai-Noodle-Salad-with-Peanut-Sauce-100-7.jpg',
    duration: 30,
    ingredients: [
      '8 Ounces Rice Noodles',
      '2 Tablespoons Brown Sugar',
      '2 Tablespoons Lime Juice',
      '3 Tablespoons Fish Sauce',
      '1 Tablespoon Soy Sauce',
      '1 Tablespoon Vegetable Oil',
      '1/2 Pound Shrimp, peeled and deveined',
      '2 Eggs, lightly beaten',
      '1 Red Bell Pepper, sliced',
      '1 Cup Bean Sprouts',
      '3 Green Onions, chopped',
      '1/4 Cup Chopped Peanuts',
      '1/4 Cup Fresh Cilantro, chopped',
    ],
    steps: [
      'Cook rice noodles according to package instructions. Drain and set aside.',
      'In a small bowl, whisk together brown sugar, lime juice, fish sauce, and soy sauce. Set aside.',
      'In a large skillet, heat vegetable oil over medium-high heat. Add shrimp and cook until pink, about 2-3 minutes. Remove from skillet and set aside.',
      'In the same skillet, add eggs and cook until scrambled. Add bell pepper and cook until tender, about 3-5 minutes.',
      'Add cooked noodles, sauce, shrimp, bean sprouts, and green onions to skillet. Toss to combine and cook until heated through, about 2-3 minutes.',
      'Garnish with peanuts and cilantro. Serve immediately.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c7',
      'c9',
    ],
    title: 'French Toast',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.allrecipes.com/thmb/kpI2DQrw7zDake_7B8wOJRkZ-6Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ALR-recipe-16895-fluffy-french-toast-hero-01-ddmfs-4x3-7fd61e054f2c4f0f868b7ab0dd8767ae.jpg',
    duration: 15,
    ingredients: [
      '4 Slices Bread',
      '2 Eggs',
      '1/2 Cup Milk',
      '1 Teaspoon Vanilla Extract',
      '1/2 Teaspoon Ground Cinnamon',
      '1 Tablespoon Butter',
      'Maple Syrup, for serving',
    ],
    steps: [
      'In a shallow bowl, whisk together eggs, milk, vanilla extract, and cinnamon.',
      'Heat a large skillet over medium heat and add butter.',
      'Dip each slice of bread into the egg mixture, allowing it to soak for a few seconds on each side.',
      'Place the soaked bread slices in the skillet and cook until golden brown, about 2-3 minutes per side.',
      'Serve hot with maple syrup.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
];
