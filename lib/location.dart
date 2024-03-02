import 'package:flutter/material.dart';
import 'package:ui_app/widget/custom.dart';

import 'login.dart';

class Locate extends StatelessWidget {
  const Locate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Text('Login',
                      style: TextStyle(color: Colors.red.shade800, fontSize: 20),
                      textAlign: TextAlign.right),
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                  image: NetworkImage(
                      'https://static2.bigstockphoto.com/8/4/3/large2/348840637.jpg'),
                  height: 300,
                  width: 500,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Live Tracking',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.red.shade800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "                   Live tracking: \nKnow exactly where your food is.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.red.shade800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Costum.Button('Create Account', () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Login()));
                }, context),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Login With Facebook',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
