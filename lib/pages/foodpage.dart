import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/food.dart';

class FoodPage extends StatelessWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.name)),
    );
  }
}
