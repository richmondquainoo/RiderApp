import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Components/TextButtonComponent.dart';
import 'package:rider_app/Services/UtilityService.dart';

import '../ConstantColors.dart';
import '../Constants.dart';

class AcceptDetailsScreen extends StatelessWidget {
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
                  icon: Icon(
                    Icons.close,
                    size: 22,
                    color: Colors.white,
                  ),
                  label: 'Complete Order',
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0),
                child: Column(
                  children: [
                    Container(
                      height: 350,
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
                        color: kPrimaryColor2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Order ID: ',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      child: Text(
                                        'ACC1131',
                                        style: GoogleFonts.lato(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Phone: ',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '+233544727866',
                                        style: GoogleFonts.lato(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.6,
                              color: Colors.orange,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.teal,
                                        radius: 50,
                                        child: Icon(
                                          Icons.person,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Name: ',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Richie Nana Amfoh',
                                              style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 11,
                                          ),
                                          Container(
                                            child: Text(
                                              'Product name: ',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Wine Shirts',
                                              style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 11,
                                          ),
                                          Container(
                                            child: Text(
                                              'Quantity: ',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '14',
                                              style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 11,
                                          ),
                                          Container(
                                            child: Text(
                                              'Price: ',
                                              style: GoogleFonts.lato(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              r'$78',
                                              style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.6,
                              color: Colors.orange,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Delivery history',
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 0.6,
                              color: Colors.orange,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text('Product Name',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                ),
                                Container(
                                  child: Text('Order ID',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                ),
                                Container(
                                  child: Text('Qty',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                ),
                                Container(
                                  child: Text('Date',
                                      style: GoogleFonts.lato(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 3,),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     Container(
                            //       child: Text('Classic shoe',
                            //           style: GoogleFonts.lato(
                            //             fontSize: 11,
                            //             fontWeight: FontWeight.w400,
                            //             color: Colors.black,
                            //           )),
                            //     ),
                            //     Container(
                            //       child: Text('ADN1234',
                            //           style: GoogleFonts.lato(
                            //             fontSize: 11,
                            //             fontWeight: FontWeight.w400,
                            //             color: Colors.black,
                            //           )),
                            //     ),
                            //     Container(
                            //       child: Text('3',
                            //           style: GoogleFonts.lato(
                            //             fontSize: 11,
                            //             fontWeight: FontWeight.w400,
                            //             color: Colors.black,
                            //           )),
                            //     ),
                            //     Container(
                            //       child: Text('12 Aug',
                            //           style: GoogleFonts.lato(
                            //             fontSize: 11,
                            //             fontWeight: FontWeight.w400,
                            //             color: Colors.black,
                            //           )),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButtonComponent(
                          labelColor: Colors.teal,
                          textColor: Colors.white,
                          borderRadius: 5,
                          label: 'Complete Order',
                          onTap: () {
                            new UtilityService().confirmationBox(
                              context: context,
                              message: 'Are you sure you want to  proceed with order?',
                              title: 'Confirmation',
                              color: Colors.blueAccent,

                            );
                          }),
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
