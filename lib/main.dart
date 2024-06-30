import 'package:chatbot/auth/Login_Or_Register.dart';
import 'package:chatbot/model/NewRestaurant.dart';
import 'package:chatbot/themes/Theme_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => restaurant())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themedata,
    );
  }
}
