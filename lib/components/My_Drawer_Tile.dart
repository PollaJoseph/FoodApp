import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function()? ontap;
  const MyDrawerTile({
    super.key,
    required this.icon,
    required this.ontap,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
          ),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          onTap: ontap,
      ),
    );
  }
}
