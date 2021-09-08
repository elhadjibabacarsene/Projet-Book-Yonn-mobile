
import 'package:book_yonn_mobile/views/connexion/connexion_home.dart';
import 'package:book_yonn_mobile/views/connexion/connexion.form.dart';
import 'package:book_yonn_mobile/views/connexion/connexion_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Color(0xFFFBF1D1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xfffff),
                Color(0xfffff),
                Color(0xfffff),
                 Color(0xfffff),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 500.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/slider1.png',
                                ),
                                height: 280.0,
                                width: 280.0,
                              ),
                            ),
                          
                            SizedBox(height: 15.0),
                                      const Text(
                          'Apprenez aux côtés de professionnels phares',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black87
                          ),
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/slider1.png',
                                ),
                                height: 280.0,
                                width: 280.0,
                              ),
                            ),
                            
                            SizedBox(height: 15.0),
                             const Text(
                          'Apprenez aux côtés de professionnels phares',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black87
                          ),
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/slider1.png',
                                ),
                                height: 280.0,
                                width: 280.0,
                              ),
                            ),
                           
                            SizedBox(height: 15.0),
                             const Text(
                          'Apprenez aux côtés de professionnels phares',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black87
                          ),
                                ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: FlatButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Suivant',
                            style: TextStyle(
                              color: Colors.blueAccent.shade700,
                              fontSize: 28.0,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.blueAccent.shade700,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
        height: 100.0,
        width: double.infinity,
        color: Colors.white,
        child: GestureDetector(
          child: Center(
            child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color:Colors.blueAccent.shade700),
                      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 17),
                     
          
                  ),
                  onPressed: () {Navigator.of(context).push(navigateToInscriptionForm());} ,
                  
                  child: Text('Commencer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              
                              
                            ),
                            ),
                ),
            ),
          ),
        ),
      )
          : Text(''),
    );
  }
 navigateToInscriptionForm(){
      Navigator.pushNamed(context, '/connexion_home');
    }
}


