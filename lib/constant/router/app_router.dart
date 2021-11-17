import 'package:book_yonn_mobile/presentation/screens/AbonneScreen/pages/abonne_center.dart';
import 'package:book_yonn_mobile/presentation/screens/ConnexionScreen/connexion.form.dart';
import 'package:book_yonn_mobile/presentation/screens/ConnexionScreen/connexion_home.dart';
import 'package:book_yonn_mobile/presentation/screens/DemarrageScreen/demarrage_screen.dart';
import 'package:book_yonn_mobile/presentation/screens/InscriptionScreen/inscriptions_form.dart';
import 'package:book_yonn_mobile/presentation/screens/OnboardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppRouter{
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Demarrage());
      case '/demarrage':
        return MaterialPageRoute(builder: (_) => const Demarrage());
      case '/connexion_home':
        return MaterialPageRoute(builder: (_) => const ConnexionsHome());
      case '/connexion_form':
        return MaterialPageRoute(builder: (_) => const ConnexionsForm());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case '/inscription_form':
        return MaterialPageRoute(builder: (_) => const InscriptionsForm());
      case '/abonne_screen':
        return MaterialPageRoute(builder: (_) => const AbonneCenter());
    }
  }
}