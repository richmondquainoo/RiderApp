import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Views/HelpAndSupportScreen.dart';

import '../Constants.dart';

class ContactUsScreen extends StatelessWidget {
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
                  label: 'Contact Us',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpAndSupportScreen(),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 90,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.email,
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              child: Text(
                                "Email",
                                style: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                child: Text(
                              'casantey.business@cbsg.com',
                              style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 90,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.phone,
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              child: Text(
                                "Phone",
                                style: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                child: Text(
                                  '+233-544-727-866',
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 90,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.location_pin,
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              child: Text(
                                "Location",
                                style: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                child: Text(
                                  'East-Legon(Adjringanor),Accra',
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ],
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
