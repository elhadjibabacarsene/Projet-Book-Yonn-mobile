import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class Trajet extends StatefulWidget {
  const Trajet({Key? key}) : super(key: key);

  @override
  _TrajetState createState() => _TrajetState();
}

class _TrajetState extends State<Trajet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Quel est votre trajet ?',
            style: TextStyle(
                color: colorBlue,
                fontSize: 15.0,
                fontFamily: 'SF Pro Display Regular'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: colorBlack, width: 0.4),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                          // Icon
                          )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        // Input
                        children: [
                          getInputNavigation('Départ'),
                          getInputNavigation('Destination')
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInputNavigation(String label) {
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          labelStyle: TextStyle(
              fontSize: 14,
              color: colorLightGray,
              fontFamily: 'SF Pro Display Regular')),
    );
  }
}
