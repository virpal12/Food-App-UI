import 'package:flutter/material.dart';
import 'package:ui_app/sixth.dart';
import 'package:ui_app/widget/custom.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  'Create your account',
                  style: TextStyle(
                      color: Colors.red.shade800,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Costum.textfield('username'),
              Costum.textfield('Email'),
              Costum.textfield('Password'),
              Costum.textfield('Phone'),
              SizedBox(
                height: 15,
              ),
              Costum.Button('Login', () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Login_two()));
              }, context),
              SizedBox(
                height: 15,
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
