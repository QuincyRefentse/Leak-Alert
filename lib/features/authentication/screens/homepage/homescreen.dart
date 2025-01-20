import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:leakalert/features/authentication/screens/capture/capture.dart';
import 'package:leakalert/features/authentication/screens/home/home.dart';
import 'package:leakalert/features/authentication/screens/news/news.dart';

import '../notifications/notifications.dart';
import '../reportsbyuser/reportsbyuser.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1; // Default index

  final List<Widget> _pages = [

    Home(),
    ReportsByUser(),
    News(),
  ];

  final List<Widget> _navBarItems = [
    Icon(Icons.home, size: 30),
    Icon(Icons.water_drop, size: 30),
    Icon(Icons.newspaper_outlined, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Curved Nav Bar'),
        elevation: 0,
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: _navBarItems,
        index: _currentIndex,
        height: 60,
        color: Colors.blue,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    int index = 2;
    final items = <Widget>[
      Icon(Icons.home,size: 30),
      Icon(Icons.camera_alt,size: 30),
      Icon(Icons.water_drop,size: 30),
      Icon(Icons.notifications,size: 30),
      Icon(Icons.newspaper_outlined,size: 30),

    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Curved Nav Bar'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          items: items,
          height: 60,
      ),
    );
  }
}
*/