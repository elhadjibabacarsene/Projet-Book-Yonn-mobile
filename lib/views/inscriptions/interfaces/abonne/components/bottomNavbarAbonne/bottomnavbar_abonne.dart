import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:book_yonn_mobile/views/inscriptions/interfaces/abonne/abonne_main.dart';
import 'package:flutter/material.dart';

class BottomNavBarAbonne extends StatefulWidget {
  const BottomNavBarAbonne({Key? key}) : super(key: key);

  @override
  _BottomNavBarAbonneState createState() => _BottomNavBarAbonneState();
}

class _BottomNavBarAbonneState extends State<BottomNavBarAbonne>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  int _currentIndexFirst = 0;
  int _currentIndexSecond = 0;
  double heightNav = 100.0;
  bool addMoreActivated = false;

  bool isBottomNavBar1clicked = true;
  bool isBottomNavBar2clicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      height: heightNav,
      alignment: Alignment.topCenter,
      child: Column(children: [
        BottomNavigationBar(
          backgroundColor: colorWhite,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndexFirst,
          items: firstBottomNavigationBarItem,
          onTap: onTabTappedFirst,
          selectedIconTheme: isBottomNavBar1clicked
              ? iconBottomItemsStyle(35, colorBlue)
              : iconBottomItemsStyle(35, colorNavigation),
          unselectedIconTheme: iconBottomItemsStyle(35, colorNavigation),
          selectedLabelStyle: isBottomNavBar1clicked
              ? labelBottomItemsStyle(11, colorBlue)
              : labelBottomItemsStyle(11, colorNavigation),
          unselectedLabelStyle: labelBottomItemsStyle(11, colorNavigation),
        ),
        Visibility(
          visible: addMoreActivated,
          child: BottomNavigationBar(
            backgroundColor: colorWhite,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndexSecond,
            items: secondBottomNavigationBarItem,
            onTap: onTabTappedSecond,
            selectedIconTheme: isBottomNavBar2clicked
                ? iconBottomItemsStyle(35, colorBlue)
                : iconBottomItemsStyle(35, colorNavigation),
            unselectedIconTheme: iconBottomItemsStyle(35, colorNavigation),
            selectedLabelStyle: isBottomNavBar2clicked
                ? labelBottomItemsStyle(11, colorBlue)
                : labelBottomItemsStyle(11, colorNavigation),
            unselectedLabelStyle: labelBottomItemsStyle(11, colorNavigation),
          ),
        )
      ]),
    );
  }

  // when the tab is tapped, show the appropriate page
  onTabTappedFirst(int index) {
    setState(() {
      _currentIndexFirst = index;
      isBottomNavBar1clicked = true;
      isBottomNavBar2clicked = false;
      abonneMainState?.setState(() {
        abonneMainState?.currentIndexFirst = _currentIndexFirst;
        abonneMainState?.currentIndexSecond = 0;
        _currentIndexSecond = 0;
      });
      // If more option tapped
      if (index == 2) {
        onAddMoreClicked();
      }
    });
  }

  onTabTappedSecond(int index) {
    setState(() {
      _currentIndexSecond = index;
      isBottomNavBar1clicked = false;
      isBottomNavBar2clicked = true;
      abonneMainState?.setState(() {
        abonneMainState?.currentIndexSecond = _currentIndexSecond;
        abonneMainState?.currentIndexFirst = 0;
        _currentIndexFirst = 0;
      });
    });
  }

  // List first row item of bottom nav bar
  List<BottomNavigationBarItem> get firstBottomNavigationBarItem => [
        itemsMenu('Navigation', Icon(Icons.place_outlined)),
        itemsMenu('Mes réservations', Icon(Icons.date_range_outlined)),
        itemsMenu(
            'Plus d\'options',
            AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
            )),
        itemsMenu('Mon Profil', Icon(Icons.person_outline)),
        itemsMenu('Notifications', Icon(Icons.notifications_none_outlined)),
      ];

  // List second  row item of bottom nav bar
  List<BottomNavigationBarItem> get secondBottomNavigationBarItem => [
        itemsMenu('Paramètres', Icon(Icons.settings_outlined)),
        itemsMenu('Partage position', Icon(Icons.share_outlined)),
        itemsMenu('Aide', Icon(Icons.help_outline_outlined)),
        itemsMenu('Rechercher', Icon(Icons.search_outlined)),
      ];

  // when add more item clicked
  onAddMoreClicked() {
    if (!addMoreActivated) {
      addMoreActivated = true;
      heightNav = 200.0;
      _controller.forward();
    } else {
      addMoreActivated = false;
      heightNav = 100.0;
      _controller.reverse();
    }
  }
}

// items menu
itemsMenu(String title, dynamic icon) {
  return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: icon,
      ),
      label: title);
}

// style icon bottom items
iconBottomItemsStyle(double size, Color color) {
  return IconThemeData(
    color: color,
    size: size,
  );
}

// style text bottom items
labelBottomItemsStyle(double size, Color color) {
  return TextStyle(
    fontSize: size,
    fontFamily: 'SF Pro Display Regular',
  );
}
