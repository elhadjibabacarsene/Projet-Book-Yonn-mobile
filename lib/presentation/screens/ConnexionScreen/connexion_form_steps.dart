import 'package:flutter/material.dart';

import 'components/steps/step1.dart';
import 'components/steps/step2.dart';
import 'components/steps/step3.dart';
import 'components/steps/step4.dart';
import 'components/steps/step5.dart';

class InscriptionFormSteps {
  int _numberStep = 0;

  List<Widget> steps = [
    Step1(),
    Step2(),
    Step3(),
    Step4(),
    Step5(),
  ];

  int getNumberStep() {
    return _numberStep;
  }

  void switchNextStep() {
    if (_numberStep < steps.length - 1) {
      _numberStep++;
    }
  }

  void switchPrevStep() {
    if (_numberStep != 0) {
      _numberStep--;
    }
  }

  Widget getCurrentSteps() {
    return steps[_numberStep];
  }
}
