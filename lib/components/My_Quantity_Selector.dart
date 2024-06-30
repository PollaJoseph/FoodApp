import 'package:chatbot/model/Food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final food Food;
  final VoidCallback onincrement;
  final VoidCallback ondecrement;

  const MyQuantitySelector({
    super.key,
    required this.Food,
    required this.onincrement,
    required this.quantity,
    required this.ondecrement
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50)
      ),
      padding:const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: ondecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
              ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:8 ),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
            ),

            GestureDetector(
            onTap: onincrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
              ),
          ),

        ],
      ),
    );
  }
}
