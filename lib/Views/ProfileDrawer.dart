import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/ListTileMenuComponent.dart';
import 'package:rider_app/Components/MainDrawer.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Services/UtilityService.dart';
import 'package:rider_app/Views/DashboardScreen.dart';

import 'SplashScreen.dart';

class ProfileDrawer extends StatefulWidget {
  @override
  _ProfileDrawerState createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Material(
            color: kPrimaryTextColor,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 150, horizontal: 15),
              children: <Widget>[
                ListTileMenuComponent(
                  icon: Icons.person,
                  label: 'My profile',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.notifications,
                  label: 'Notifications',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.settings,
                  label: 'Settings',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.help_center_rounded,
                  label: 'Help & Support',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.logout,
                  label: 'Logout',
                  onTap: () {},
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.white,
                ),
                ListTileMenuComponent(
                  icon: Icons.format_paint_rounded,
                  label: 'Themes',
                  onTap: () {},
                ),
                ListTileMenuComponent(
                  icon: Icons.info,
                  label: 'About',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
