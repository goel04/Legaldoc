// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legaldoc/pages/home.dart';

class Thank extends StatelessWidget {
  const Thank({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
   // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Color themeColor = const Color(0xFF43D19E);
    //Color textColor = const Color(0xFF32567A);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: themeColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "images/logo.jpg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Text(
              "Thank You!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              " Call Requested Successfully",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "You will be redirected to the home page shortly\nor click here to return to home page",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
            Flexible(
              child: ElevatedButton(
                onPressed: () {
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                },
                child: Text('Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
