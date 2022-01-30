import 'package:flutter/material.dart';
import 'package:grocery/bottom_nav.dart';
import 'package:grocery/home.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: BottomNavb(),
    );
  }
} 
