import 'package:flutter/material.dart';
import 'package:ecommerce/historypage.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/profile.dart';

class Homepage extends StatefulWidget {
  //const homepage({Key? key}) : super(key: key);

  //final PageStorageBucket bucket=PageStorageBucket();
  //Widget currentScreen = Home();
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //get _index => _index;

  //get currentScreen => currentScreen;

  //get bucket => bucket;
  int _currentIndex=0;
  final tabs = [
    Home(),
    History(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            label: "" ,
            icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.history,
                color: Colors.white,
              ),

          ),
          BottomNavigationBarItem(
            label: "",
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
