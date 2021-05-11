import 'package:flutter/material.dart';
import 'package:travel_app/widgets/horizontal_place_item.dart';
import 'package:travel_app/widgets/icon_badge.dart';
import 'package:travel_app/widgets/search_bar.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/widgets/vertical_place_item.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Place? place;

  List<Place> places = [
    Place(
      name: "Xperience Golden Sandy Beach",
      image: "assets/images/11.jpg",
      location: "Sharm El Sheikh, Egypt",
      price: "EGP 350 / Night",
      details:
          "Situated in Sharm El Sheikh, Xperience Golden Sandy Beach has a private beach area and a garden."
          "\n \nAll guest rooms at the property come with a satellite TV and tea/coffee facilities.",
    ),
    Place(
      name: "Tolip Resort El Galala Majestic",
      image: "assets/images/12.jpg",
      location: "Ain Sokhna, Egypt",
      price: "EGP 1850 / Night",
      details:
          "TOLIP Resort El Galala Majestic offers 5-star accommodation in Ain Sokhna and has a restaurant, bar and garden."
          "\n \nThis 5-star hotel offers room service, an ATM and free WiFi.",
    ),
    Place(
      name: "Helnan Hotel ElSokhna",
      image: "assets/images/13.jpg",
      location: "Ain Sokhna, Egypt",
      price: "EGP 1350 / Night",
      details:
          "Helnan Hotel ElSokhna features a restaurant, bar, a garden and terrace in Ain Sokhna."
          "\n \nThis 4-star hotel offers a 24-hour front desk and room service.",
    ),
    Place(
      name: "Sky View Suites Hotel",
      image: "assets/images/14.jpg",
      location: "Hurghada, Egypt",
      price: "EGP 650 / Night",
      details:
          "Sky View Suites Hotel offers accommodation with a restaurant, free private parking, an outdoor swimming pool and a bar with a shared lounge.",
    ),
    Place(
      name: "Marina Star Hotel",
      image: "assets/images/15.jpg",
      location: "Hurghada, Egypt",
      price: "EGP 650 / Night",
      details:
          "Marina Star Hotel provides accommodation with a restaurant, free private parking, an outdoor swimming pool and a bar featuring family rooms.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.sort),
          color: Colors.black,
          iconSize: 25,
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: IconBadge(
                icon: Icons.notifications_none,
                size: 25.0,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Where do you want to go?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: SearchBar(),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 20),
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    return HorizontalPlaceItem(
                      place: places[index],
                    );
                  }),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(20.0),
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    return VerticalPlaceItem(place: places[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
