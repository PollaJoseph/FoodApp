import 'package:chatbot/components/My_Quantity_Selector.dart';
import 'package:chatbot/model/Cart_Items.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final cartitems cartitem;
  const MyCartTile({super.key, required this.cartitem});

  @override
  Widget build(BuildContext context) {
    return Consumer<restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            cartitem.Food.imagepath,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartitem.Food.name),
                            Text(
                              cartitem.Food.price.toString() + " EGP",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            )
                          ],
                        ),
                        const Spacer(),
                        MyQuantitySelector(
                            Food: cartitem.Food,
                            onincrement: () {
                              restaurant.addtocart(
                                  cartitem.Food, cartitem.selectedaddons);
                            },
                            quantity: cartitem.quantitiy,
                            ondecrement: () {
                              restaurant.removefromcart(cartitem);
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: cartitem.selectedaddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      children: cartitem.selectedaddons
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      Text(addon.name),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text("(" +
                                          addon.price.toString() +
                                          " EGP" +
                                          ")")
                                    ],
                                  ),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12),
                                  onSelected: (value) {},
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
