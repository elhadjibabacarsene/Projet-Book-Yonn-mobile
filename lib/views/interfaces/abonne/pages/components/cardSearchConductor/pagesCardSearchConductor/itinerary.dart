import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class Itinerary extends StatefulWidget {
  const Itinerary({Key? key}) : super(key: key);

  @override
  _ItineraryState createState() => _ItineraryState();
}

class _ItineraryState extends State<Itinerary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          'Quel itineraire préférez-vous ?',
          textAlign: TextAlign.center,
          style: TextStyle(
              height: 1.5,
              color: colorBlue,
              fontSize: 15.0,
              fontFamily: 'SF Pro Display Regular'),
        ),
        SizedBox(height: 60.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            getButtonItinerary('Nationale', null),
            getButtonItinerary('  Péage  ', null)
          ],
        ),
      ]),
    );
  }

  OutlinedButton getButtonItinerary(String text, VoidCallback? onPressed) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: colorBlack),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          side: BorderSide(width: 2.0, color: colorBlack),
        ));
  }
}
