import 'package:chatbot/components/my_receipt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class deliveryprogresspage extends StatelessWidget {
  const deliveryprogresspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: _buildbottomnavbar(context),
        body: ListView(
          children: [myreceipt()],
        )
        
        );
  }

  Widget _buildbottomnavbar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OMAR KHALED",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                Text(
                  "DRIVER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
