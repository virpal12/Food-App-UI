

import 'package:flutter/material.dart';

class Costum {
  static textfield (String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(


        decoration: InputDecoration(
          label: Text(text),
          filled: true,
          fillColor: Colors.grey.shade100,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    );
  }

  static Button (String text,void Function()? onPressed , BuildContext context){
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10.0),
     child: ElevatedButton(onPressed: onPressed, child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 27),),
       style: ElevatedButton.styleFrom(minimumSize: Size(400, 50),
       backgroundColor: Colors.red.shade800,
       textStyle: TextStyle(color: Colors.white)
       ),
     ),
   );
  }
}

