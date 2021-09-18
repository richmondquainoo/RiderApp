import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Views/DeleteAccountScreen.dart';
import 'package:rider_app/Views/HelpAndSupportScreen.dart';
import 'package:rider_app/Views/ResetPasswordScreen.dart';

import '../Constants.dart';
import 'AccountInfoScreen.dart';

class AccountAndSecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(
                  color: kPrimaryTextColor,
                  label: 'Account and Security',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpAndSupportScreen(),
                      ),
                    );
                  }),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeleteAccountScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 3),
                          spreadRadius: 0.7,
                          blurRadius: 0.8,
                          color: Colors.black12,
                        ),
                        BoxShadow(
                          offset: Offset(-1, -1),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          color: Colors.black12,
                        ),
                      ],
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Delete my account',
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryTextColor),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountInfoScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 3),
                          spreadRadius: 0.7,
                          blurRadius: 0.8,
                          color: Colors.black12,
                        ),
                        BoxShadow(
                          offset: Offset(-1, -1),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          color: Colors.black12,
                        ),
                      ],
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'My Account Information',
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryTextColor),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 3),
                        spreadRadius: 0.7,
                        blurRadius: 0.8,
                        color: Colors.black12,
                      ),
                      BoxShadow(
                        offset: Offset(-1, -1),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        color: Colors.black12,
                      ),
                    ],
                    color: kBackgroundColor,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'How to reset your password',
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryTextColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
