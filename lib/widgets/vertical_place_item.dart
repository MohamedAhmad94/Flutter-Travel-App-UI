import 'package:flutter/material.dart';
import 'package:travel_app/screens/details.dart';
import 'package:travel_app/models/places.dart';

class VerticalPlaceItem extends StatelessWidget {
  final Place? place;

  VerticalPlaceItem({Key? key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/details',
              arguments: PlaceDetailsArguments(place: place));
        },
        child: Container(
          height: 70.0,
          child: Row(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      '${place!.image}',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 130.0,
                    child: ListView(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${place!.name}',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w700),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(width: 3.0),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                size: 13.0, color: Colors.blueGrey[300]),
                            SizedBox(width: 3.0),
                            Text(
                              '${place!.location}',
                              style: TextStyle(
                                  color: Colors.blueGrey[300], fontSize: 13.0),
                              maxLines: 1,
                            ),
                          ],
                        ),
                        SizedBox(height: 7.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${place!.price}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
