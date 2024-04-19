import 'package:flutter/material.dart';
import 'package:fooddelivery_app/components/current_location.dart';
import 'package:fooddelivery_app/components/description_box.dart';
import 'package:fooddelivery_app/components/drawer.dart';
import 'package:fooddelivery_app/components/silver_app.dart';
import 'package:fooddelivery_app/components/tab_bar.dart';
import 'package:fooddelivery_app/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // my current location
                      const MyCurrentLocation(), const MyDescriptionBox()
                    ],
                  ),
                ),
              ],
          body: Container(color: Colors.purple)),
    );
  }
}
