import 'package:chatbot/components/My_Button.dart';
import 'package:chatbot/components/My_Textfield.dart';
import 'package:chatbot/pages/Home_Page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
    TextEditingController namecontroller = TextEditingController();


  void login() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Container(
              height:150,
              width:150 ,
              child: Image.asset(
                'images/small logo.png',
                
                //fit: BoxFit.cover,
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            //message and app slogan

            Text(
              'LOGIN YOUR ACCOUNT',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //name textfied
            MyTextfield(
             // icon:const Icon(Icons.person),
              controller: namecontroller,
              hinttext: 'NAME ',
              obscuretext: false,
            ),
            const SizedBox(
              height: 10,
            ),


            //email textfield

            MyTextfield(
             // icon:const Icon(Icons.email),
              controller: emailcontroller,
              hinttext: 'EMAIL ',
              obscuretext: false,
            ),
            const SizedBox(
              height: 10,
            ),

            //password textfield

            MyTextfield(
             // icon: Icon(Icons.lock),
              controller: passwordcontroller,
              hinttext: 'PASSWORD ',
              obscuretext: true,
            ),
            const SizedBox(
              height: 10,
            ),

            //sign in button

            MyButton(ontap: login, text: 'SIGN IN '),
            const SizedBox(
              height: 25,
            ),

            //register

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NOT A MEMBER??',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
               const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'REGISER NOW',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
