import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'categories_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = 'register/';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.network(
                      'https://www.amit-learning.com/assets/logo.png'),
                ),
                TextFormField(
                  validator: Validators.compose([
                    Validators.minLength(5, 'Characters are less than 5'),
                    Validators.required('Email is required'),
                    Validators.email('Invalid email address'),
                    Validators.minLength(10, 'Characters are greater than 10'),
                  ]),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Password',
                    suffix: Icon(Icons.visibility_outlined),
                  ),
                  validator: Validators.compose([
                    Validators.required('Password is required'),
                    Validators.minLength(
                        8, 'Name cannot be less than 8 characters'),
                    Validators.patternRegExp(RegExp(r"^[A-Za-z]+[1-9]+$"),
                        'password should contain letters and numbers'),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match!';
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: 'Confirm Password',
                    suffix: Icon(Icons.visibility_outlined),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.red),
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed(CategoriesScreen.routeName);
                      }
                    },
                    child:
                        Text('Register', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Have an account? Go Login',
                              style: TextStyle(color: Colors.black),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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
