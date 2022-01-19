import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   static const routeName = 'register/';


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
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 10,
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
                  child: Text('Register',style: TextStyle(color: Colors.white)),),

              ),
              SizedBox(height: 15,),
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text('Have an account? Go Login'
                           ,style: TextStyle(
                            color: Colors.black
                        ),
                        ),
                        ),
                      ],

                    ),
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
