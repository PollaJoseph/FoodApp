import 'package:chatbot/pages/Login_Page.dart';
import 'package:chatbot/pages/Register_Page.dart';
import 'package:flutter/material.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
//initially...show login page
  bool showloginpage = true;

//toggel between login and register
  void toggelpage() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return LoginPage(onTap: toggelpage);
    } else {
      return RegisterPage(onTap: toggelpage);
    }
  }
}
