import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/app_bar_inscription/app_bar_inscription.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/buttons/button_big.dart';
import 'package:flutter/material.dart';
import 'inscriptions_form_steps.dart';

InscriptionFormSteps inscriptionFormSteps = new InscriptionFormSteps(); 


class InscriptionsForm extends StatefulWidget {
  const InscriptionsForm({ Key? key }) : super(key: key);

  @override
  _InscriptionsFormState createState() => _InscriptionsFormState();
}

class _InscriptionsFormState extends State<InscriptionsForm> {

  Widget containerButtonSteps({title, bgColor, textColor, action}){
    return Container(
                    width: 158,
                    height: 50,
                    child: ButtonBig(
                      title: title,
                      bgColor: bgColor,
                      textColor: textColor,
                      action: action
                      ),
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarInscription(stepperVisibily: true, numberStep: inscriptionFormSteps.getNumberStep()),
      ),
      body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(31.0),
              child: inscriptionFormSteps.getCurrentSteps(),
            )
          ),
      bottomNavigationBar: Container(
        height: 150.0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                containerButtonSteps(
                  title: 'Préc.',
                  action: precStep,
                  bgColor: colorGray,
                   textColor: colorDarkGray,
                ),
                containerButtonSteps(
                  title: 'Suiv.',
                  action: nextStep,
                  bgColor: colorBlue,
                  textColor: colorWhite,
                ),
            ],
          ),
      ),    
    );
  }

  void precStep(){
    setState(() {
      inscriptionFormSteps.switchPrevStep();
    });
  }

  void nextStep(){
    setState(() {
      inscriptionFormSteps.switchNextStep();
    });
  }
}