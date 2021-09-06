import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/custom_text_form_field.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/message_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

bool isSwitch0n = false;

class InscriptionFormSteps{

  int _numberStep = 0;

  

  List<Widget> steps =[
      Column(children: [
          Text(
            'Bonjour, et si on se connaissez un peu mieux ?\nVeuillez renseigner votre nom et prénom.',
            style: TextStyle(
                height: 1.5,
                fontSize: 16,
                letterSpacing: 0.2,
                color: colorDarkGray,
            ),
          ),
          SizedBox(
            height: 37,
          ),
          CustomTextFormField(label: 'Prénom(s) et nom')
      ],
    ),
    Column(
      children: [
        CustomTextFormField(
          label: 'Date de naissance',
          suffixIcon: Icon(
            Icons.calendar_today_outlined,
            color: colorLightGray,
          ),
        ),
        SizedBox(height: 37,),
        CustomTextFormField(label: 'Adresse'),
        SizedBox(height: 37,),
        CustomTextFormField(label: 'Numéro de téléphone')
      ],
    ),
    Column(
      children: [
        CustomTextFormField(label: 'Email'),
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
                    text: 'la ',
                    style: TextStyle(
                    color: colorDarkGray,
                    fontFamily: 'SF Pro Display Regular',
                    fontSize: 18
                  )
                  ),
                  TextSpan(
                    text: 'politique\nde confidentialité',
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
    Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Text(
              'Choisissez une photo de profil afin d\'être facilement reconnaissable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5,
                  fontSize: 17,
                  letterSpacing: 0.2,
                  color: colorLightGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: CircleAvatar(
                backgroundColor: colorGray,
                radius: 70.0,
                child: Center(
                  child: Icon(
                      Icons.add,
                      color: colorSlowGray,
                      size: 70,
                    ),
                ),
              ),
            )
        ],
      ),
    ),
    Column(
      children: [
        CustomTextFormField(
          label: 'Numéro de permis',
          suffixIcon: Icon(
            Icons.info_outline
          )
        ),
        SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.5),
            child: Row(
              children: [
                Icon(
                  Icons.document_scanner_outlined,
                  size: 30,
                  color: colorBlue,
                ),
                SizedBox(
                  width: 14.7,
                ),
                Text(
                  'Scanner mon permis',
                  style: TextStyle(
                    color: colorBlue,
                    fontFamily: 'Circular Std Bold',
                    fontSize: 18
                  ),
                )
              ],
            ),
          ),
        ),
        CustomTextFormField(
          label: 'Numéro de serie de la voiture',
          suffixIcon: Icon(
            Icons.info_outline
          )
        ),
        SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.5),
            child: Row(
              children: [
                Icon(
                  Icons.palette_outlined,
                  size: 30,
                  color: colorBlue,
                ),
                SizedBox(
                  width: 14.7,
                ),
                Text(
                  'Ma couleur de voiture',
                  style: TextStyle(
                    color: colorBlue,
                    fontFamily: 'Circular Std Bold',
                    fontSize: 18
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: colorRed,
                )
              ],
            ),
          ),
        )
        
      ],
    )
  ];

  int getNumberStep(){
    return _numberStep;
  }

  void switchNextStep(){
    if(_numberStep < steps.length - 1){
      _numberStep++;
    }
  }

  void switchPrevStep(){
    if(_numberStep != 0){
      _numberStep--;
    }
  }

  Widget getCurrentSteps(){
    return steps[_numberStep];
  }

}