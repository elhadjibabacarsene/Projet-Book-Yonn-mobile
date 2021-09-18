import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/custom_text_form_field.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/message_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

GlobalKey<FormState> keyFormStep3 = GlobalKey<FormState>();

class Step3 extends StatefulWidget {
  const Step3({ Key? key }) : super(key: key);

  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {

  bool isSwitch0n = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyFormStep3,
      child: Column(
        children: [
          CustomTextFormField(label: 'Email', type: TextInputType.emailAddress,),
          SizedBox(
            height: 37,
            child: MessageTextFormField(message: 'Message d\'erreur', typeMessage: 'error',),
          ),
          CustomTextFormField(
            label: 'Mot de passe',
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: colorLightGray,
            ),
            type: TextInputType.visiblePassword,
          ),
          SizedBox(
            height: 37,
          ),
          CustomTextFormField(
            label: 'Confirmer mot de passe',
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: colorLightGray,
            ),
            type: TextInputType.visiblePassword,
          ),
          SizedBox(
            height: 37,
            child: MessageTextFormField(message: 'Message de confirmation', typeMessage: 'success',),
          ),
          SizedBox(
            height: 56.7,
          ),
          Row(
            children: [
              FlutterSwitch(
                inactiveColor: colorGray,
                value: isSwitch0n, onToggle: (value){
                  isSwitch0n = true;
                }
              ),
              SizedBox(
                width: 15,
              ),
              RichText(
                text: TextSpan(
                  text: 'j\'accepte tous les ',
                  style: TextStyle(
                    color: colorDarkGray,
                    fontFamily: 'SF Pro Display Regular',
                    fontSize: 18
                  ),
                  children: [
                    TextSpan(
                      text: 'termes, ',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display Regular',
                        fontWeight: FontWeight.bold,
                        color: colorBlue,
                        fontSize: 18
                      )
                    ),
                    TextSpan(
                      text: '\nla ',
                      style: TextStyle(
                      color: colorDarkGray,
                      fontFamily: 'SF Pro Display Regular',
                      fontSize: 18
                    )
                    ),
                    TextSpan(
                      text: 'politique de confidentialité',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display Regular',
                        fontWeight: FontWeight.bold,
                        color: colorBlue,
                        fontSize: 18
                      )
                    )
                  ]
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}