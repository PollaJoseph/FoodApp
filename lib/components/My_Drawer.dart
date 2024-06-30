import 'package:chatbot/auth/Login_Or_Register.dart';
import 'package:chatbot/components/My_Drawer_Tile.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:chatbot/pages/Login_Page.dart';
import 'package:chatbot/pages/Setting_Page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        //app logo

        Image.asset("images/big logo.png"),

        //home list title
        MyDrawerTile(
            icon: Icons.home,
            ontap: () => Navigator.pop(context),
            text: "H    O    M    E"),

        //setting list title
        MyDrawerTile(
            icon: Icons.settings,
            ontap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ));
            },
            text: "S    E    T    T    I    N    G    "),
        MyDrawerTile(
            icon: Icons.wechat,
            ontap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ));
            },
            text: "c h a t    a s s i s s t a n t"),
        const Spacer(),

        //logout list title
        MyDrawerTile(
            icon: Icons.logout,
            ontap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginOrRegister(),
                  ));
            },
            text: "L    O    G    O    U    T     "),
        const SizedBox(
          height: 25,
        ),
      ]),
    );
  }
}
