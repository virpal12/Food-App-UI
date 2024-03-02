import 'package:flutter/material.dart';

import 'cool.dart';

class Inam extends StatefulWidget {
  const Inam({super.key});

  @override
  State<Inam> createState() => _InamState();
}

class _InamState extends State<Inam> {
  List img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Gf03LtulfPobC_q3Ka89ZGSrMszCvcRKBg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6SbEkdeVPcX9BrWbXoU-NPvidoYY-U1jrrg&usqp=CAU',
    'https://media.istockphoto.com/id/518468635/photo/french-pastries-on-display-a-confectionery-shop.webp?b=1&s=170667a&w=0&k=20&c=BIvMLZ0FrEUIO5NGSyoTMisruoWAkvu6rwjtjJSpzFU=',
    'https://media.istockphoto.com/id/838927480/photo/onam-sadya-on-a-banana-leaf.webp?b=1&s=170667a&w=0&k=20&c=X4WRJV8WU1sZkTT4iui1QnSWD9FxkxvVk7ahHCbK-Y4=',
    'https://images.unsplash.com/photo-1576458088443-04a19bb13da6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGRvbWlub3olMjBwaXp6YXxlbnwwfHwwfHx8MA%3D%3D',
  ];

  List txt = [
    'Lord Petrick',
    'Dairy Don',
    'Atul Bakery',
    'South Indian',
    'Dominoz',
  ];
  List rating = [
    'wastern food',
    'Desi cafe',
    'Premium cakes',
    'Original Taste',
    'delicious Pizza'
  ];
  List STR = ['4.9', '4.7', '4.5', '4.1', '4.9'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade400,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: 360,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Latest Offers',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Find discounts offers, \nspecial meals and more!',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              '20 Restaurants',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                      Image(
                        image: NetworkImage(
                            'https://cdn5.vectorstock.com/i/1000x1000/93/34/food-delivery-man-riding-a-scooter-vector-30259334.jpg'),
                        height: 300,
                        width: 140,
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: txt.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: NetworkImage("${img[index]}"),
                                    height: 150,
                                    width: 160,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          txt[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          rating[index],
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              STR[index],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.red.shade800,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.red.shade800,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (value) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Burger()));
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
