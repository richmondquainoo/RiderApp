import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Components/OrderedItemComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Views/HomeScreen.dart';

class NewOrdersScreen extends StatelessWidget {
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
                  label: 'New Orders',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }
                  ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 275,
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
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        OrderedItemComponent(
                          image: 'assets/images/shirt1.jpg',
                          itemName: 'Wine Shirt',
                          quantity: 4,
                          price: 30,
                          orderID: "1128ACC",


                        ),
                        SizedBox(height: 5,),
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
                                            color: Colors.black,
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
                                            color: Colors.black,
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 275,
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
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        OrderedItemComponent(
                          image: 'assets/images/shirt1.jpg',
                          itemName: 'Wine Shirt',
                          quantity: 4,
                          price: 30,
                          orderID: "1128ACC",


                        ),
                        SizedBox(height: 5,),
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
                                            color: Colors.black,
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
                                            color: Colors.black,
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 275,
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
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        OrderedItemComponent(
                          image: 'assets/images/shirt1.jpg',
                          itemName: 'Wine Shirt',
                          quantity: 4,
                          price: 30,
                          orderID: "1128ACC",


                        ),
                        SizedBox(height: 5,),
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
                                            color: Colors.black,
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
                                            color: Colors.black,
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
