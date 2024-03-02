import 'package:flutter/material.dart';
import 'package:ui_app/offer.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Choices',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.red.shade800),
                        ),
                        Text('Show All')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                      height: 120,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          color: Colors.red.shade800),
                                      child: Image.network(
                                        img[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 37,
                                          width: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 40),
                                            child: Text(
                                              txt[index],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              rating[index],
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              STR[index],
                                              style: TextStyle(
                                                  color: Colors.red.shade800,
                                                  fontSize: 17),
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: Colors.red.shade800,
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Restaurant',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade800),
                          ),
                          Text('Show All')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: txt.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
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
                                    // mainAxisAlignment: MainAxisAlignment.start,
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
            Navigator.push(context, MaterialPageRoute(builder: (_) => Inam()));
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
