import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Views/HomeScreen.dart';

import '../ConstantColors.dart';
import 'MyProfileScreen.dart';
import 'SplashScreen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> columns = [
      Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Hours spent online",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "8.3hrs",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total distance covered",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "18 km",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total deliveries",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "15",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.limeAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request accepted",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "9",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request declined",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "3",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Hours spent online",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "8.3hrs",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          // SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total distance covered",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "18 km",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total deliveries",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "15",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color:Colors.limeAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request accepted",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "9",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color:Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request declined",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "3",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Hours spent online",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "8.3hrs",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          // SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total distance covered",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "18 km",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.blueAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total deliveries",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "15",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.limeAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request accepted",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "9",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Container(
              height: 45,
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
                color: Colors.redAccent
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Total request declined",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "3",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryTextColor,
                          wordSpacing: 0.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 0.4,
            color: Colors.black26,
          ),
        ],
      ),
    ];










    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryTextColor,
          title: Text(
            'Dashboard',
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 0),
          ),
          leading: IconButton(
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
              color: Colors.white,
              size: 16,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Today',
              ),
              Tab(
                text: 'Yesterday',
              ),
              Tab(
                text: 'This week',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: columns,
        ),
      ),
    );
  }
}
