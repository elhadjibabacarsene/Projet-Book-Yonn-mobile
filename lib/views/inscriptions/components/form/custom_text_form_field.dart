import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

bool isPrenomValid = false;

class CustomTextFormField extends StatefulWidget {
  final String label;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? prefixText;
  final TextInputType? type;
  final FocusNode? focusNode;
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
      this.prefixText,
      this.focusNode,
      this.type})
      : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  TextEditingController _controller = new TextEditingController();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: _controller,
      keyboardType: TextInputType.datetime,
      textInputAction: widget.textInputAction,
      onFieldSubmitted: widget.onFieldSubmitted,
      focusNode: widget.focusNode,
      readOnly: widget.readOnly,
      onTap: onTextFormFieldTaped,
      decoration: InputDecoration(
          prefixText: widget.prefixText,
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
      _controller.text = formatter.format(picked).toString();
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
