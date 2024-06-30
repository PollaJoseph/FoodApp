import 'package:chatbot/components/My_Button.dart';
import 'package:chatbot/model/Food.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final food Food;
  final Map<addon, bool> selectedaddon = {};
  FoodPage({super.key, required this.Food}) {
    for (addon Addon in Food.availableaddons) {
      selectedaddon[Addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addtocart(food Food, Map<addon, bool> selectedaddon) {
    Navigator.pop(context);
    List<addon> currentselectedaddon = [];
    for (addon Addon in widget.Food.availableaddons) {
      if (widget.selectedaddon[Addon] == true) {
        currentselectedaddon.add(Addon);
      }
    }
    context.read<restaurant>().addtocart(Food, currentselectedaddon);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scafold UI
        Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Image.asset(widget.Food.imagepath),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.Food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      //food price
                      Text(
                        widget.Food.price.toString() + " EGP",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //food description
                      Text(widget.Food.description),
                      const SizedBox(
                        height: 10,
                      ),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        "ADD-ONS",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.Food.availableaddons.length,
                            itemBuilder: (context, index) {
                              addon addons = widget.Food.availableaddons[index];
                              return CheckboxListTile(
                                  title: Text(addons.name),
                                  subtitle: Text(
                                    addons.price.toString() + " EGP",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  value: widget.selectedaddon[addons],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedaddon[addons] = value!;
                                    });
                                  });
                            }),
                      ),
                    ],
                  ),
                ),
                MyButton(
                    ontap: () => addtocart(widget.Food, widget.selectedaddon),
                    text: "ADD TO CART"),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
