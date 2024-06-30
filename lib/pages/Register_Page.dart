import 'package:chatbot/components/My_Button.dart';
import 'package:chatbot/components/My_Textfield.dart';
import 'package:chatbot/pages/Login_Page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();


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
              height:5,
            ),

            //message and app slogan

            Text(
              "LET'S CREATE AN ACCOUNT FOR YOU",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
             //name textfied
            MyTextfield(
              // icon:const Icon(Icons.person),
              controller: namecontroller,
              hinttext: 'NAME ',
              obscuretext: false,
            ),
            const SizedBox(
              height: 5,
            ),

            //email textfield

            MyTextfield(
              //icon:const Icon(Icons.email),
              controller: emailcontroller,
              hinttext: 'EMAIL ',
              obscuretext: false,
            ),
            const SizedBox(
              height: 5,
            ),

            //password textfield

            MyTextfield(
             // icon:const Icon(Icons.lock_open_outlined),
              controller: passwordcontroller,
              hinttext: 'PASSWORD ',
              obscuretext: true,
            ),
            const SizedBox(
              height: 5,
            ),
            

            //confirm password textfield

            MyTextfield(
             // icon:const Icon(Icons.lock),
              controller: confirmpasswordcontroller,
              hinttext: 'CONFIRM PASSWORD ',
              obscuretext: true,
            ),
            const SizedBox(
              height: 5,
            ),

            //sign up button

            MyButton(ontap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  LoginPage(onTap: () {  },),
                  ));
            }, text: 'SIGN UP '),
            const SizedBox(
              height: 10,
            ),

            //alredy you have an account ..... let's login

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ALREADY YOU HAVE AN ACCOUNT??',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap:widget.onTap,
                  child: Text(
                    'LOGIN NOW',
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
