import 'package:chatbot/components/My_Button.dart';
import 'package:chatbot/components/My_Cart_Tile.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:chatbot/pages/payment_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<restaurant>(
      builder: (context, restaurant, child) {
        final usercart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: const Text("CART"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                  "ARE YOU SURE YOU WANT TO CLEAR YOUR CART?"),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("CANCEL")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      restaurant.clearcart();
                                    },
                                    child: const Text("CLEAR")),
                              ],
                            ));
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    usercart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("CART IS EMPTY")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: usercart.length,
                                itemBuilder: (context, index) {
                                  final cartitems = usercart[index];
                                  return MyCartTile(cartitem: cartitems);
                                }))
                  ],
                ),
              ),
              MyButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const paymentpage()));
                  },
                  text: "GET TO CHECKOUT"),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
