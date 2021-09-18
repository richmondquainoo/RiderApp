import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Services/UtilityService.dart';
import 'package:rider_app/Views/HomeScreen.dart';

class NotificationsScreen extends StatelessWidget {
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
                  label: 'Notifications',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '3',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    child: Text(
                      'new notifications',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              GestureDetector(
                onTap: (){
                  new UtilityService().notificationMessage(
                    context: context,
                    title: 'New notification',
                    message: 'James Obeng approved receipt of package and rated your service.',
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 95,
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
                    child: Stack(
                      //alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.person,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'You have received a new rating',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          wordSpacing: 0.3),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text('from '),
                                      ),
                                      Container(
                                        child: Text(
                                          'James Obeng',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      'Today',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w300,
                                      ),
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
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                onTap: (){
                  new UtilityService().notificationMessage(
                    context: context,
                    title: 'New notification',
                    message: 'James Obeng approved receipt of package and rated your service.',
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 95,
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
                    child: Stack(
                      //alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.person,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'You have received a new rating',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          wordSpacing: 0.3),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text('from '),
                                      ),
                                      Container(
                                        child: Text(
                                          'James Obeng',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      'Today',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w300,
                                      ),
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
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                onTap: (){
                  new UtilityService().notificationMessage(
                    context: context,
                    title: 'New notification',
                    message: 'James Obeng approved receipt of package and rated your service.',
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 95,
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
                    child: Stack(
                      //alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.wallet_giftcard,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'You have received a new rating',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          wordSpacing: 0.3),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text('from '),
                                      ),
                                      Container(
                                        child: Text(
                                          'James Obeng',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Colors.blueAccent),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      'Today',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w300,
                                      ),
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
