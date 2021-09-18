import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';

bool isPrenomValid = false;

class CustomTextFormField extends StatefulWidget {
  final String label;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextInputType? type;
  final  readOnly;
  final TextInputAction? textInputAction;
  final onFieldSubmitted;
  final String? initialValue;
  final FormFieldValidator? validator;

  const CustomTextFormField(
      {Key? key,
      this.validator,
      required this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.initialValue,
      this.textInputAction,
      this.onFieldSubmitted,
      this.readOnly = false,
      this.type})
      : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: _controller,
      keyboardType: TextInputType.datetime,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onFieldSubmitted,
      readOnly: widget.readOnly,
      onTap: onTextFormFieldTaped,
      decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: TextStyle(
            color: colorNormalGray,
            fontFamily: 'SF Pro Display Regular',
            fontSize: 18,
          ),
          filled: true,
          fillColor: colorGray,
          prefix: widget.prefixIcon,
          errorText: null,
          errorStyle: TextStyle(
              fontSize: 15,
              fontFamily: 'SF Pro Display Regular',
              color: colorRed),
          suffixIcon: widget.suffixIcon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7.0),
              ),
              borderSide: BorderSide.none)),
    );
  }

  void onTextFormFieldTaped() {
    if (widget.type == TextInputType.datetime) {
      chooseDate();
    }
  }

  void chooseDate() async {
    final firstDate = DateTime(DateTime.now().year - 120);
    final lastDate = DateTime.now();
    // show datepicker
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: lastDate,
        firstDate: firstDate,
        lastDate: lastDate);
    if (picked != null) {
      _controller.text = picked.toString();
    }
  }

  getTypeFormField() {
    return widget.type;
  }

  set initialValue(value) {
    setState(() {
      initialValue = value;
    });
  }
}
