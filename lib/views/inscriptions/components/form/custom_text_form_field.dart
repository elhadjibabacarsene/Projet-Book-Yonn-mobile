import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class CustomTextFormField extends StatefulWidget {

  final String label;
  final Icon? prefixIcon;
  final Icon? suffixIcon;



  const CustomTextFormField({ Key? key, required this.label, this.prefixIcon, this.suffixIcon }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            decoration: InputDecoration(
              hintText: widget.label,
              hintStyle: TextStyle(
                color: HexColor('#a4a4a4'),
                fontFamily: 'SF Pro Display Regular',
                fontSize: 18,
              ),
              filled: true,
              fillColor: HexColor('#efefef'),
              prefix: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
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