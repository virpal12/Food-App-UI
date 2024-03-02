import 'package:flutter/material.dart';
import 'package:ui_app/widget/custom.dart';

import 'Eight.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                      color: Colors.red.shade800,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Plese enter your email to recieve a \nlink to create a new password via email.',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Costum.textfield('Email'),
              SizedBox(
                height: 35,
              ),
              Costum.Button('Send', () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Current()));
              }, context),
              SizedBox(
                height: 195,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 29.0, vertical: 29),
                child: Row(
                  children: [
                    Text(
                      'Dont have any account ?',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Sign Up',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
