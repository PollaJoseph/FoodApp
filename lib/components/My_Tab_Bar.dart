import 'package:chatbot/model/Food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildcategorytabs() {
    return foodcategory.values.map((Category) {
      return Tab(
      text: Category.toString().split(',').last,
      );
     }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, 
      tabs:const [
        Text('burger'),
        Text('salad'),
        Text('side'),
        Text('dessert'),
        Text('drink')

      ]
     // _buildcategorytabs()
      ),
    );
  }
}
