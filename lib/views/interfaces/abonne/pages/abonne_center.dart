import 'package:book_yonn_mobile/views/inscriptions/interfaces/abonne/components/bottomNavbarAbonne/buildBottomNavBar.dart';
import 'package:book_yonn_mobile/views/interfaces/abonne/components/menuBottom/menu_bottom.dart';
import 'package:book_yonn_mobile/views/interfaces/abonne/components/topBar/top_bar.dart';
import 'package:book_yonn_mobile/views/interfaces/abonne/pages/navigation/navigation.dart';
import 'package:flutter/material.dart';

class AbonneCenter extends StatefulWidget {
  const AbonneCenter({Key? key}) : super(key: key);

  @override
  _AbonneCenterState createState() => _AbonneCenterState();
}

class _AbonneCenterState extends State<AbonneCenter> {
  int _selectedIndex = 0;

  List<Widget> _pagesAbonne = [
    MapSrceen(),
    Center(
      child: Text('Page Navigation'),
    ),
    Center(
      child: Text('Page Profil'),
    ),
    Center(
      child: Text('Page Notifications'),
    ),
    Center(
      child: Text('Mes abonnements'),
    ),
    Center(
      child: Text('Mes abonnements'),
    ),
    Center(
      child: Text('Mes abonnements'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: TopBar()),
      body: _pagesAbonne[_selectedIndex],
      bottomNavigationBar: MenuBottom(
        selectedIndex: _selectedIndex,
        onTaped: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
