import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Views/AccountAndSecurityScreen.dart';

import '../Constants.dart';

class ResetPasswordScreen extends StatelessWidget {
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
                  label: 'Reset Password',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountAndSecurityScreen(),
                        ));
                  }),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 595,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'How to reset your password',
                            style: GoogleFonts.lato(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              color: kPrimaryTextColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 17,),
                        Container(
                          child: Text(
                            'If you would like to change your password, you can do so at any time!',
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: kPrimaryTextColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            'Please note: Never share your password with anyone – not even us! Our representatives will never ask you for your password.',
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: kPrimaryTextColor,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            'If you have a verified phone number or email associated with your account, you can reset your password from the login screen. You can also reset your password via email.',
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: kPrimaryTextColor,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 22,),
                        Container(
                          child: Text(
                            'To reset your password via email from the Login screen:',
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '1. Tap “Forgot Your Password?”',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '2. Then select how you would like to reset your password – via email”',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '3. You should receive a password reset link via email to the address associated with your account.”',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '4. Click the URL (if you can’t click the URL, copy and paste it into your browser)”',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '5. Finally, choose and enter your new password.',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
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
