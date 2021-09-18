import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Views/AccountAndSecurityScreen.dart';
import 'package:rider_app/Views/ContactUsScreen.dart';
import 'package:rider_app/Views/HomeScreen.dart';

import '../ConstantColors.dart';
import '../Constants.dart';

class HelpAndSupportScreen extends StatelessWidget {
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
                  label: 'Help & Support',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  }),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(14),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 300,
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
                    child: Column(
                      children: [
                        // The cards begin from here
                        //The entire card widget and the forward button have been activated
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactUsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        child: Icon(
                                          Icons.question_answer,
                                          size: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Container(
                                      child: Text(
                                        "Contact Us",
                                        style: GoogleFonts.lato(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ContactUsScreen(),
                                            ),
                                          );
                                        },
                                        icon: Icon(Icons.arrow_forward_ios_outlined,
                                            size: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>AccountAndSecurityScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        child: Icon(
                                          Icons.person,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Container(
                                      child: Text(
                                        "My Account and Security",
                                        style: GoogleFonts.lato(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>AccountAndSecurityScreen(),
                                            ),
                                          );
                                        },
                                        icon: Icon(Icons.arrow_forward_ios_outlined,
                                            size: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        Container(
                          height: 60,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.flag_sharp,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    child: Text(
                                      "Safety",
                                      style: GoogleFonts.lato(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.arrow_forward_ios_outlined,
                                          size: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12,),
                        Container(
                          height: 60,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.announcement,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    child: Text(
                                      "Troubleshooting",
                                      style: GoogleFonts.lato(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.arrow_forward_ios_outlined,
                                          size: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
