import 'package:flutter/material.dart';
import 'package:travel_app/screens/details.dart';
import 'package:travel_app/models/places.dart';

class HorizontalPlaceItem extends StatelessWidget {
  final Place? place;

  HorizontalPlaceItem({Key? key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/details',
              arguments: PlaceDetailsArguments(place: place));
        },
        child: Container(
          height: 250,
          width: 140,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  '${place!.image}',
                  height: 175,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 7.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${place!.name}',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 3.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${place!.location}',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[300],
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
