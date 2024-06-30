import 'package:chatbot/components/My_Current_Location.dart';
import 'package:chatbot/components/My_Description_Box.dart';
import 'package:chatbot/components/My_Drawer.dart';
import 'package:chatbot/components/My_Food_Tile.dart';
import 'package:chatbot/components/My_Sliver_Bar.dart';
import 'package:chatbot/components/My_Tab_Bar.dart';
import 'package:chatbot/model/Food.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:chatbot/pages/Food_Page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller =
        TabController(length: foodcategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

//sort out and return a list of food items
  List<food> _filtermenubycategory(foodcategory category, List<food> fullmenu) {
    return fullmenu.where((food) => food.category == category).toList();
  }

  //return list of food in given category
  List<Widget> getfoodinthiscategors(List<food> fullmenu) {
    return foodcategory.values.map((Category) {
      List<food> categorymenu = _filtermenubycategory(Category, fullmenu);
      return ListView.builder(
          itemCount: categorymenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            final food = categorymenu[index];
            return FoodTile(
              Food: food,
              ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(
                            Food: food,
                          ))),
            );
          }));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerboxisscroller) => [
                MySliverBar(
                    title: MyTabBar(tabController: _tabcontroller),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),

                        //my current location
                        //const 
                        MyCurrentLocation(),

                        //description box
                        const MyDescriptionBox()
                      ],
                    )),
              ],
          body: Consumer<restaurant>(
            builder: (context, restaurant, child) => TabBarView(
                controller: _tabcontroller,
                children: getfoodinthiscategors(restaurant.menu)),
          )
          ),
    );
  }
}
