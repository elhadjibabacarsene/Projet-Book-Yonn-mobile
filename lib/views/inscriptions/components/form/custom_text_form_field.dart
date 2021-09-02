import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class CustomTextFormField extends StatefulWidget {


  const CustomTextFormField({ Key? key }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            decoration: InputDecoration(
              hintText: 'Prénom(e) et nom',
              hintStyle: TextStyle(
                color: HexColor('#a4a4a4')
              ),
              filled: true,
              fillColor: HexColor('#efefef'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                borderSide: BorderSide.none  
              )
            ),
          );
  }
}