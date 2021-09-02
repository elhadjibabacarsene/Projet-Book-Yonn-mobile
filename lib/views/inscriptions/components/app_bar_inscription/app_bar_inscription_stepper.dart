import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class AppBarInscriptionStepper extends StatefulWidget {

  const AppBarInscriptionStepper({ Key? key }) : super(key: key);

  @override
  _AppBarInscriptionStepperState createState() => _AppBarInscriptionStepperState();
}

class _AppBarInscriptionStepperState extends State<AppBarInscriptionStepper> {

  final formStepsNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: createAllCircle(),
    );
  }

  createOneCircle(int index){
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: HexColor('#707070'), width: 0.25),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: CircleAvatar(
            backgroundColor: index == 0 ? HexColor('#2884ff') : Colors.transparent,
            radius: 06.0,
       ),
      ),
    );
  }

  createAllCircle(){
    final children = <Widget>[];
    for (var i = 0; i < formStepsNumber; i++) {
      print(i);
      children.add(createOneCircle(i));
    }
    return children;
  }

}