import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/widgets/icon_badge.dart';

class Details extends StatefulWidget {
  static String routeName = '/details';
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final PlaceDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as PlaceDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        actions: [
          IconButton(
              icon: IconBadge(
                icon: Icons.notifications_none,
                size: 25.0,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 250.0,
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  '${arguments.place!.image}',
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${arguments.place!.name}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(icon: Icon(Icons.bookmark), onPressed: () {})
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on,
                    size: 15.0, color: Colors.blueGrey[300]),
                SizedBox(width: 3.0),
                Text(
                  '${arguments.place!.location}',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey[300],
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              '${arguments.place!.price}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Details',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '${arguments.place!.details}',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class PlaceDetailsArguments {
  Place? place;

  PlaceDetailsArguments({@required this.place});
}
