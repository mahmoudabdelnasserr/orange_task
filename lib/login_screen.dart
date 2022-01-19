import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_login_register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login/';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child:
                  Image.network('https://www.amit-learning.com/assets/logo.png'),
            ),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Password',
                  suffix: Icon(Icons.visibility_outlined)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 35,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.red
              ),
              child: TextButton(onPressed: () {  },
              child: Text('Login',style: TextStyle(color: Colors.white)),),

            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                children: [
             TextButton(onPressed: (){
               Navigator.of(context).pushNamed(RegisterScreen.routeName);
             }, child: Text('Go Signup',style: TextStyle(
               color: Colors.black
             ),
             ),
             )
                ],
              ),
            )

          ],

        ),
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
