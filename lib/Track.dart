import 'package:flutter/material.dart';
import 'package:ui_app/widget/custom.dart';

import 'Eight.dart';
import 'Restaurant.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track your order',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Estimated Delivery Time',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '15 mins',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade800),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1220955787/photo/indian-delivery-man-in-red-uniform-stock-photo.webp?b=1&s=170667a&w=0&k=20&c=Ts2VWK88mmiZOOo7m6FmL1jDQsv2ld7IeOSzNzHoNk8='),
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  children: [
                    Text(
                      'Rahul Sharma',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('is your delevery boy'),
                  ],
                ),
                SizedBox(
                  width: 48,
                ),
                Row(
                  children: [
                    Text(
                      '4.9',
                      style: TextStyle(color: Colors.red.shade800),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Image(
              image: NetworkImage(
                  'https://www.shutterstock.com/shutterstock/photos/1696466740/display_1500/stock-vector-food-delivery-app-with-destination-and-distance-on-the-map-the-courier-is-holding-a-big-box-1696466740.jpg'),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 100,
            ),
            Costum.Button('Go to Home Page', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Current()));
            }, context)
          ],
        ),
      ),
    );
  }
}
