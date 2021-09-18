import 'package:book_yonn_mobile/views/inscriptions/interfaces/abonne/components/bottomNavbarAbonne/buildBottomNavBar.dart';
import 'package:book_yonn_mobile/views/interfaces/abonne/pages/navigation/navigation.dart';
import 'package:flutter/material.dart';


class AbonneCenter extends StatefulWidget {
  const AbonneCenter({ Key? key }) : super(key: key);

  @override
  _AbonneCenterState createState() => _AbonneCenterState();
}

class _AbonneCenterState extends State<AbonneCenter> {
  int currentPageIndex = 0;

  List<Widget> _pagesAbonne = [
    MapSrceen(),
    Center(child: Text('Page Navigation'),),
    Center(child: Text('Page Profil'),),
    Center(child: Text('Page Notifications'),),
    Center(child: Text('Mes abonnements'),),
    Center(child: Text('Mes abonnements'),),
    Center(child: Text('Mes abonnements'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pagesAbonne[currentPageIndex],
      bottomNavigationBar: BuildBottomNavbar(),
    );
  }
}