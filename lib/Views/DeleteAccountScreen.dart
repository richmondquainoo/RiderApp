import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Services/UtilityService.dart';

import '../Constants.dart';
import 'AccountAndSecurityScreen.dart';

class DeleteAccountScreen extends StatelessWidget {

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
                  label: 'Account Information',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountAndSecurityScreen(),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 12, right: 12),
                child: Container(
                  height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                'Username: ',
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: kPrimaryTextColor),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Text(
                                'Yaw Mensah',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: kPrimaryTextColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                'Email address: ',
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: kPrimaryTextColor),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Text(
                                'yawmensah@gmail.com',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: kPrimaryTextColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: (){
                    // bool canProceed = isValidEntries(context);
                    // if(canProceed){}

                    new UtilityService().confirmationBox(
                        color: Colors.blue,
                        title: 'Account deletion confirmation',
                        context: context,
                        message: 'Are you sure you want to delete your account?',
                        onYes: (){},
                        onNo: (){
                          Navigator.pop(context);
                        }
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: GoogleFonts.lato(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
