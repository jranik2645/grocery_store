import 'package:flutter/material.dart';
import 'package:grocery_store/pages/homePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/splash.png",
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "By Fresh Groceries",
                style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SizedBox(height: 40,),
              InkWell(
                 onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                 },
                  child: Ink(
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 16,
                    ),
                      decoration:  BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                         color: Color(0xFF00A368),
                      ),
                     child: Text(
                         "Get started",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                     ),
                     ),
                  ),
              )
          ],
        ),
      ),
    );
  }
}
