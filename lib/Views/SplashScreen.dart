import 'dart:async';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Views/GettingStarted.dart';
import 'package:rider_app/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GettingStarted()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryTextColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo1.png',
                height: 100,
                color: Colors.white,
              ),
              SizedBox(height: 5,),
              // Container(
              //   child: Text(
              //     'Rider App',
              //     style: GoogleFonts.lato(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.white,
              //         letterSpacing: 0.8),
              //   ),
              // ),
              //CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
