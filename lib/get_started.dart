import 'package:flutter/material.dart';
import 'Second.dart';

class Start extends StatelessWidget {
   Start({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(
                    'https://st4.depositphotos.com/1352665/20892/v/450/depositphotos_208925156-stock-illustration-big-number-foods-various-categories.jpg'),
                height: 400,
                fit: BoxFit.fitHeight,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 235,
                width: 357,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.red.shade400,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Happy Meals',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Discover the best foods from over 1,000 restaurants.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Second()),
                          );
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(50, 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
