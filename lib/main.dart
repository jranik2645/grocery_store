import 'package:flutter/material.dart';
import 'package:grocery_store/pages/homePage.dart';
import 'package:grocery_store/pages/iteam_page.dart';
import 'package:grocery_store/pages/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         routes: {
           "/":(context)=>SplashScreen(),
           "homePage":(context)=>HomePage(),
           "itemPage":(context)=>ItemPage(),
         },
    );
  }
}
