import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  //List of the food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/assets/burgers/b1.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.59),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description:
          "A juicy chicken patty with melted chicken, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/assets/burgers/b2.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.59),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A juicy carrots, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/assets/burgers/b3.jpg",
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.59),
      ],
    ),
    Food(
      name: "Chilli Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/assets/burgers/b4.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.59),
      ],
    ),
    Food(
      name: "Turkey Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
      imagePath: "lib/assets/burgers/b5.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 0.59),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/sa1.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette",
      imagePath: "lib/assets/burgers/sa2.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.99),
        Addon(name: "Grilled Chicken", price: 1.59),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Delight in the flavours of the East with this sesame-infused salads.",
      imagePath: "lib/assets/burgers/sa3.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/sa1.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Zealow Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/sa1.jpg",
      price: 15.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),

    //sides
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt.",
      imagePath: "lib/assets/burgers/s1.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.99),
        Addon(name: "Cajun Spice", price: 1.59),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping",
      imagePath: "lib/assets/burgers/s2.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 1.59),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/s3.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/s4.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/s5.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/d3.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/d2.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Cake Pie",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/d1.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "2Red Velvet Lava Cake",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/d4.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Unidentified food",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/d5.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),

    //drinks
    Food(
      name: "Vodka",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/dr1.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Lemonade ",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/dr2.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/dr3.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/dr4.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/assets/burgers/dr5.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 1.59),
      ],
    ),
  ];

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;

  /*

  O P E R A T I O N S

  */

  // Add to Cart

  // Remove from Cart

  // get total price of cart

  // get total number of items in cart

  //clear cart

  /*

  H E L P E R S

  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
