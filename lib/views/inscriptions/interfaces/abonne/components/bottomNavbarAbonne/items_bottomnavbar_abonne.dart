import 'package:flutter/material.dart';


List<BottomNavigationBarItem> bottomNavigationBarItem = [
  itemsMenu('Navigation', Icon(Icons.place_outlined)),
  itemsMenu('Mes réservations', Icon(Icons.date_range_outlined)),
  itemsMenu('Plus d\'options', Icon(Icons.add)),
  itemsMenu('Mon Profil', Icon(Icons.person_outline)),
  itemsMenu('Notifications', Icon(Icons.notifications_none_outlined)),
];

itemsMenu(String title, Icon icon) {
  return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: icon,
      ),
      label: title);
}
