import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ConstantColors.dart';
import '../Constants.dart';

class RiderRequestCardComponent extends StatelessWidget {
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final String label5;
  final String label6;
  final String label7;
  final String label8;
  final String label9;
  final String label10;
  final String jobText1;
  final String jobText2;

  const RiderRequestCardComponent({
    this.label1,
    this.label2,
    this.label3,
    this.label4,
    this.label5,
    this.label6,
    this.label7,
    this.label8,
    this.label9,
    this.label10,
    this.jobText1,
    this.jobText2
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor2,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.05, 0.05),
            blurRadius: 1,
            spreadRadius: 0.09,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        label1,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label2,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label3,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        label4,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label5,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label6,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        label7,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label8,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        label9,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black45,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Text(
                        label10,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Divider(
              thickness: 0.6,
              color: Colors.black45,
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 58,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryTextColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.3, 0.3),
                        blurRadius: 0.3,
                        spreadRadius: 0.3,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      jobText1,
                      style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 0.2),
                    ),
                  ),
                ),
                Container(
                  height: 58,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.3, 0.3),
                        blurRadius: 0.1,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      jobText2,
                      style: GoogleFonts.lato(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryTextColor,
                          letterSpacing: 0.2),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
