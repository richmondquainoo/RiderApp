import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rider_app/Components/TextButtonComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Services/UtilityService.dart';
import 'package:rider_app/Views/AcceptDetailsScreen.dart';

import 'HomeScreen.dart';

class AcceptAndDeclineScreen extends StatefulWidget {
  @override
  _AcceptAndDeclineScreenState createState() => _AcceptAndDeclineScreenState();
}

class _AcceptAndDeclineScreenState extends State<AcceptAndDeclineScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              //onMapCreated: _onMapCreated,
              //markers: _markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(5.556, -0.1969),
                zoom: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: kPrimaryTextColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "ETA: ",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  wordSpacing: 0.5),
                            ),
                          ),
                          Container(
                            child: Text(
                              "11:40pm",
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        child: Text(
                          'Shirts Inc',
                          style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Text(
                          '4.7km',
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.teal,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 104,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
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
                          color: Colors.white30,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Pick up: ',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Colors.limeAccent,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Top Herbal Clinic, North-Legon, Accra.',
                                        style: GoogleFonts.lato(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Drop off: ',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Colors.limeAccent,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Ssnit flats, Adenta Housing Down, Accra.',
                                        style: GoogleFonts.lato(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 22),
                      Row(
                        children: [
                          Expanded(
                            child: TextButtonComponent(
                                fontSize: 16,
                                borderRadius: 5,
                                labelColor: Colors.teal,
                                label: "Accept",
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          AcceptDetailsScreen(),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: TextButtonComponent(
                                fontSize: 16,
                                borderRadius: 5,
                                labelColor: Colors.redAccent,
                                label: "Decline",
                                onTap: () {
                                  new UtilityService().confirmationBox(
                                      color: Colors.blueAccent,
                                      context: context,
                                      title: 'Decline Confirmation',
                                      message:
                                          'Are you sure you want to decline request?',
                                      onNo: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AcceptAndDeclineScreen(),
                                          ),
                                        );
                                      },
                                      onYes: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen(),
                                            )
                                        );
                                      });
                                }),
                          ),
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
    );
  }
}
