import 'package:chatbot/model/NewRestaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({
    super.key,
  });
  final textcontroller = TextEditingController();

  void openlocationscreenbox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("YOUR LOCATION"),
              content: const TextField(
                decoration: InputDecoration(hintText: "ENTER ADDRESS....."),
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("CANCEL"),
                ),

                //save button

                MaterialButton(
                  onPressed: () {
                    String newaddress = textcontroller.text;
                    context
                        .read<restaurant>()
                        .updatedeliveryaddress(newaddress);
                    Navigator.pop(context);
                    textcontroller.clear();
                  },
                  child: const Text("SAVE"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DELIVERY NOW ",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openlocationscreenbox(context),
            child: Row(
              children: [
                //adderss
                Consumer<restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryaddress,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //drop down menu
                const Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
//                


               

