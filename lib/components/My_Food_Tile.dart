import 'package:chatbot/model/Food.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final food Food;
  final void Function()? ontap;
  const FoodTile({
    super.key,
    required this.Food,
    required this.ontap
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          
                    //text food details
                    Text(Food.name),
                    const SizedBox(height: 4,),
                    Text(
                      Food.price.toString()+" EGP",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                        ),
                        ),
                       const SizedBox(height: 10,),
                    Text(
                      Food.description,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                      ),
                      ),
          
          
                  ],
                ),
                ),
               const SizedBox(width: 15,),
                //image food
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Food.imagepath,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
         Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent:25 ,
          )
      ],
    );
  }
}
