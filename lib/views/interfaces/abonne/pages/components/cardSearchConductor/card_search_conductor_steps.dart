import 'package:book_yonn_mobile/views/interfaces/abonne/pages/components/cardSearchConductor/pagesCardSearchConductor/trajet.dart';
import 'package:flutter/material.dart';

class CardSearchConductorSteps {
  int _numberStepConductor = 0;

  List<Widget> stepsConductor = [
    Trajet(),
    Text('Prix'),
  ];

  int getNumberStepConductor() {
    return _numberStepConductor;
  }

  int getlengthStepConductor() {
    print(stepsConductor.length - 1);
    return stepsConductor.length;
  }

  void switchNextStepConductor() {
    if (_numberStepConductor < stepsConductor.length - 1) {
      _numberStepConductor++;
    }
  }

  void switchPreviewStepConductor() {
    if (_numberStepConductor != 0) {
      _numberStepConductor--;
    }
  }

  Widget getCurrentStepConductor() {
    return stepsConductor[0];
  }

  int getLastIndexOfStepConductor() {
    print(stepsConductor.length - 1);
    return stepsConductor.indexOf(stepsConductor.last);
  }
}
