import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery/home.dart';

class BottomNavb extends StatefulWidget {
  const BottomNavb({ Key? key }) : super(key: key);


  @override
  _BottomNavbState createState() => _BottomNavbState();
}

class _BottomNavbState extends State<BottomNavb> {
  int _selectedIndex = 0;
  List<Widget> items = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[_selectedIndex],
      bottomNavigationBar:  BottomNavyBar(
   selectedIndex: _selectedIndex,
   showElevation: true, // use this to remove appBar's elevation
   onItemSelected: (index) => setState(() {
              _selectedIndex = index;
             
    }),
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.apps),
       title: Text('Home'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.people),
         title: Text('Users'),
         activeColor: Colors.purpleAccent
     ),
    //  BottomNavyBarItem(
    //      icon: Icon(Icons.message),
    //      title: Text('Messages'),
    //      activeColor: Colors.pink
    //  ),
     BottomNavyBarItem(
         icon: Icon(Icons.settings),
         title: Text('Settings'),
         activeColor: Colors.blue
     ),
   ],
),
    );
  }
}