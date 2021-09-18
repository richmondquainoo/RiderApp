import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rider_app/Components/ListTileMenuComponent.dart';
//import 'package:rider_app/Components/ProfileDrawer.dart';
import 'package:rider_app/Components/TextButtonComponent.dart';
import 'package:rider_app/ConstantColors.dart';
import 'package:rider_app/Services/UtilityService.dart';
import 'package:rider_app/Views/AboutScreen.dart';
import 'package:rider_app/Views/HelpAndSupportScreen.dart';
import 'package:rider_app/Views/MyProfileScreen.dart';
import 'package:rider_app/Views/NotificationsScreen.dart';
import 'package:rider_app/Views/ProfileDrawer.dart';
import 'package:rider_app/Views/RequestDetailsScreen.dart';

import '../ConstantColors.dart';
import '../ConstantColors.dart';
import '../Constants.dart';
import 'AcceptAndDeclinceScreen.dart';
import 'DashboardScreen.dart';
import 'NewOrdersScreen.dart';
import 'SplashScreen.dart';
import 'TripsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId("id -1"),
            position: LatLng(5.557, -0.1969),
            infoWindow: InfoWindow(
                title: 'Ridge Church School',
                snippet: 'Basic and JHS Catholic School')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Material(
            color: kPrimaryTextColor,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person.jpg'),
                          radius: 25,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yaw Mensah',
                              style: GoogleFonts.lato(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'yawmensah@gmail.com',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListTileMenuComponent(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ));
                  },
                ),
                ListTileMenuComponent(
                  icon: Icons.person,
                  label: 'My profile',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfileScreen()));
                  },
                ),
                ListTileMenuComponent(
                  icon: Icons.notifications,
                  label: 'Notifications',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationsScreen(),
                      ),
                    );
                  },
                ),
                ListTileMenuComponent(
                  icon: Icons.settings,
                  label: 'Settings',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.help_center_rounded,
                  label: 'Help & Support',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpAndSupportScreen(),
                      ),
                    );
                  },
                ),
                ListTileMenuComponent(
                  icon: Icons.logout,
                  label: 'Logout',
                  onTap: () {
                    new UtilityService().confirmationBox(
                        color: Colors.blueAccent,
                        context: context,
                        title: 'Log out confirmation',
                        message: "Are you sure you want to logout?",
                        onYes: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScreen(),
                            ),
                          );
                        },
                        onNo: () {
                          Navigator.pop(context);
                        });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                ListTileMenuComponent(
                  icon: Icons.info,
                  label: 'About',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Container(
                    child: Text(
                      'Version 1.1.0',
                      style: GoogleFonts.lato(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ),
                // ListTileMenuComponent(
                //   icon: Icons.format_paint_rounded,
                //   label: 'Themes',
                //   onTap: () {},
                // ),
              ],
            ),
          ),
        ),
        key: _scaffoldKey,
        body: Stack(
          children: [
            GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(5.556, -0.1969),
                zoom: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 14),
              child: Container(
                child: IconButton(
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: kPrimaryTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                bottom: 45,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 165,
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
                    color: kPrimaryTextColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewOrdersScreen(),
                                    ));
                              },
                              child: Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.teal,
                                      width: 2,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   offset: Offset(1, 3),
                                    //   spreadRadius: 0.7,
                                    //   blurRadius: 0.8,
                                    //
                                    // ),
                                    // BoxShadow(
                                    //   offset: Offset(-1, -1),
                                    //   spreadRadius: 0.5,
                                    //   blurRadius: 0.5,
                                    // ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        'New Orders',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '3',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TripsScreen(),
                                    ));
                              },
                              child: Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.teal,
                                      width: 2,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   offset: Offset(1, 3),
                                    //   spreadRadius: 0.7,
                                    //   blurRadius: 0.8,
                                    //   color: Colors.black12,
                                    // ),
                                    // BoxShadow(
                                    //   offset: Offset(-1, -1),
                                    //   spreadRadius: 0.5,
                                    //   blurRadius: 0.5,
                                    //   color: Colors.black12,
                                    // ),
                                  ],

                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        'No of Trips',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          wordSpacing: 0.6,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '13',
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: TextButtonComponent(
                            fontSize: 21,
                            labelColor: Colors.teal,
                            borderRadius: 10,
                            label: 'Go Online',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      AcceptAndDeclineScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
