import 'package:flutter/material.dart';
import 'package:ui_app/Restaurant.dart';

class Current extends StatefulWidget {
  const Current({Key? key});

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {
  List img = [
    'https://media.istockphoto.com/id/184861239/photo/gift-box.webp?b=1&s=170667a&w=0&k=20&c=APZYS0T0gycaH-l_Up_t167QBv8FQbDGLEBAhUWk7zs=',
    'https://media.istockphoto.com/id/585602032/photo/chicken-bacon-club-sandwich.jpg?s=1024x1024&w=is&k=20&c=3ib35DUjwMXHlOKu8HM0DFIkWykFxXFxjzJbynOlZTU=',
    'https://media.istockphoto.com/id/1412492973/photo/butter-chicken-pizza-with-raw-cherry-tomato-black-pepper-garlic-and-mushroom-isolated-on.webp?b=1&s=170667a&w=0&k=20&c=yIX0z4HvmlPBiuEN-cQVoyloUDUtdaWm4sCP0q5AhEg=',
    'https://media.istockphoto.com/id/614313140/photo/soft-beef-tacos-with-fries.webp?b=1&s=170667a&w=0&k=20&c=cLe3RgvsdwBnzxsp6QOsZfC9w-rTlgiW1l5QArV_NrY=',
    'https://media.istockphoto.com/id/685523376/photo/white-bread-chicken-and-mayonnaise-sandwich.webp?b=1&s=170667a&w=0&k=20&c=Wy0R2V4GmVxFbuTPeyOM_khiFTD_z2pjukFC2CURRwU=',
    'https://media.istockphoto.com/id/996699224/photo/assorted-indian-food-for-lunch-or-dinner-rice-lentils-paneer-dal-makhani-naan-chutney-spices.webp?b=1&s=170667a&w=0&k=20&c=tWER_gMCey68We6-Mmvu7nHYWXL6GhL4sNsmS9WBgW4=',
    'https://plus.unsplash.com/premium_photo-1661603980318-f3cf182b2ec8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c3dlZXQlMjBpdGVtfGVufDB8fDB8fHww',
    'https://media.istockphoto.com/id/1040749178/photo/thali-meal-indian-food.webp?b=1&s=170667a&w=0&k=20&c=r0JzQPaKhoUfLZVlljlua_8AH6wpOsAYPBi2NDnovS4=',
    'https://media.istockphoto.com/id/1476234160/photo/magnificent-view-of-paneer-gulab-jamun-and-halwa-in-rajasthani-plate.webp?b=1&s=170667a&w=0&k=20&c=k2B_3WSkPUTJgA9YOWwB7wwHMNhlfkQp4_ACaInMyRg=',
    'https://media.istockphoto.com/id/476837561/photo/gujarati-thali.webp?b=1&s=170667a&w=0&k=20&c=H21WMqKp2sA8wdYTmxyP-g9-nYSsn_3w4y6ABlu_xd4=',
  ];
  List txt = [
    'Offers',
    'Burger',
    'Pizza',
    "Mexican",
    "Sandwich",
    "Indian",
    "Dessert",
    "Thali",
    "Punjabi",
    "Gujrati",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivering To',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down_circle_outlined,
                          color: Colors.red.shade800),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          height: 40,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: Icon(Icons.search),
                              labelText: 'Search Foods',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.line_weight,
                          color: Colors.red.shade800, size: 34),
                    ],
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      itemCount: txt.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index < txt.length) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: Image.network(
                                    img[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 10),
                                  child: Text(
                                    txt[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red.shade800),
                                  ),
                                )
                              ],
                            ),
                          );
                        } else {
                          return SizedBox(); // Return an empty SizedBox if index exceeds the length of txt
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q0FGRXxlbnwwfHwwfHx8MA%3D%3D'),
                                height: 200,
                                width: 330,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Hollywood Starz CAFE                       ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                  Text('4.9(124 Ratings)')
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Hotel()));
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant, color: Colors.red.shade800),
                label: 'Restaurant'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_offer_outlined,
                  color: Colors.red.shade800,
                ),
                label: 'Offers'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box, color: Colors.red.shade800),
                label: 'Account'),
          ],
        ));
  }
}

// Container(
// height:400 ,
// width: 350,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(25)
// ),
// child: Column(
// children: [
// Image(image: NetworkImage('https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q0FGRXxlbnwwfHwwfHx8MA%3D%3D'),
// height: 200,
// width: 330,
// fit: BoxFit.fill,
// ),
// SizedBox(height: 5,),
// Text('Hollywood Starz CAFE                       ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
// SizedBox(height: 5,),
//
// Row(
// children: [
// Icon(Icons.star, color: Colors.red,),
// Text('4.9(124 RATING)')
// ],
// )
// ],
// ),
//
//
// ),
