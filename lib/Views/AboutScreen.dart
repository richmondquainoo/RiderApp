import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Views/HomeScreen.dart';

import '../ConstantColors.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(
                  color: kPrimaryTextColor,
                  label: 'About',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  }),
              SizedBox(
                height: 200,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Click-Order-RiderApp',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                          letterSpacing: 0.4,
                          wordSpacing: 0.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: Text(
                        'App Version - 1.1.0',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black,
                            letterSpacing: 0.4,
                            wordSpacing: 0.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: Text(
                        'September 2021',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
