import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/custom_text_form_field.dart';
import 'package:flutter/material.dart';


GlobalKey<FormState> keyFormStep2 = GlobalKey<FormState>();

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyFormStep2,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Date de naissance',
            type: TextInputType.datetime,
            suffixIcon: Icon(
              Icons.calendar_today_outlined,
              color: colorLightGray,
            ),
            readOnly: true,
          ),
          SizedBox(
            height: 37,
          ),
          CustomTextFormField(
            label: 'Adresse',
            type: TextInputType.text,
          ),
          SizedBox(
            height: 37,
          ),
          CustomTextFormField(
            label: 'Numéro de téléphone',
            type: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
