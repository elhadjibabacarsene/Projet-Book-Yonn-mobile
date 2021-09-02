import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MessageTextFormField extends StatefulWidget {

  final String message;
  final String typeMessage;

  const MessageTextFormField({ Key? key, required this.message, required this.typeMessage }) : super(key: key);

  @override
  _MessageTextFormFieldState createState() => _MessageTextFormFieldState();
}

class _MessageTextFormFieldState extends State<MessageTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  widget.typeMessage == 'success' ? Icons.check : (widget.typeMessage == 'error') ? Icons.warning : null,
                  color: widget.typeMessage == 'success' ? HexColor('#00b969') : (widget.typeMessage == 'error') ? HexColor('#ff2147') : null,
                  size: 18,
                ),
                SizedBox(
                  width: 10.5,
                ),
                Text(
                  widget.message,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SF Pro Display Regular',
                    color: widget.typeMessage == 'success' ? HexColor('#00b969') : (widget.typeMessage == 'error') ? HexColor('#ff2147') : null
                  ),
                )
              ],
            ),
          );
  }
}