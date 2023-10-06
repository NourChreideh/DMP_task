import 'package:flutter/material.dart';
import 'package:testproject/Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //locale: Locale("ar"),
      home:HomePage(),
    );
  }
}

