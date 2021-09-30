import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Icon(
                                Icons.circle,
                                color: colorDarkGray,
                                size: 08.0,
                              ),
                            ),
                            for (var i = 0; i < 6; i++)
                              Icon(Icons.fiber_manual_record,
                                  color: colorLightGray.withOpacity(0.6),
                                  size: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Transform.rotate(
                                angle: 180 * pi / 180,
                                child: Icon(Icons.navigation, color: colorBlue, size: 15,),
                              ),
                            )
                          ])),
                  Expanded(
                      flex: 3,
                      child: Column(
                        // Input
                        children: [
                          getInputNavigation('Départ'),
                          SizedBox(
                            width: double.infinity,
                            height: 1.0,
                            child: DecoratedBox(
                                decoration:
                                    BoxDecoration(color: colorLightGray)),
                          ),
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
          suffixIcon: Icon(
            Icons.close,
            size: 15,
            color: colorBlack,
          ),
          border: InputBorder.none,
          labelText: label,
          labelStyle: TextStyle(
              fontSize: 14,
              color: colorLightGray,
              fontFamily: 'SF Pro Display Regular')),
    );
  }
}
