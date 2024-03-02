
import 'package:flutter/material.dart';
import 'package:ui_app/Track.dart';
import 'package:ui_app/widget/custom.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
              child: Image(image: NetworkImage('https://cdni.iconscout.com/illustration/premium/thumb/online-food-application-8237833-6561608.png'), height: 300,width: 250,fit: BoxFit.cover,),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Text('Your order is placed successfully' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Text('You can track your delivery from \n                  bellow button' ,style: TextStyle(fontSize:17,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10), child:Costum.Button('Track your order', () { 
              
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Track()));
            }, context)),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10), child:Costum.Button('Cancel order', () { }, context)),


          ],
        ),
      ),
    );
  }
}
