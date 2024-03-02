
  import 'package:flutter/material.dart';
import 'package:ui_app/check_out.dart';
import 'package:ui_app/widget/custom.dart';

import 'MyOrder.dart';

class Basket extends StatelessWidget {
    const Basket({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Order' ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: NetworkImage('https://img.freepik.com/premium-photo/miniature-shopping-cart-red-yellow-background-close-up_154092-12170.jpg',),
                fit: BoxFit.fill,
                height: 200,
                width: 300,

              ),
              SizedBox(height: 15,),
              Text('Your basket is empty', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.red.shade800),),
              SizedBox(height: 15,),
              Text('Make Your basket happy and \n              add foods to it', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,),),
              SizedBox(height: 65,),
              
              Costum.Button('Add Products', () { 
                 Navigator.push(context, MaterialPageRoute(builder: (_)=> Order())); }, context)
            ],
          ),
        ),
      );
    }
  }
