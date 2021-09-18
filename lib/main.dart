import 'package:flutter/material.dart';
import 'package:rider_app/Views/AccountAndSecurityScreen.dart';
import 'package:rider_app/Views/AccountInfoScreen.dart';
import 'package:rider_app/Views/DashboardScreen.dart';
import 'package:rider_app/Views/HelpAndSupportScreen.dart';

import 'package:rider_app/Views/MyProfileScreen.dart';
import 'package:rider_app/Views/NotificationsScreen.dart';
//import 'package:rider_app/Components/DrawerHeaderComponent.dart';
import 'package:rider_app/Views/RegisterScreen.dart';
import 'package:rider_app/Views/SignupScreen.dart';
import 'package:rider_app/Views/RequestDetailsScreen.dart';

import 'Views/AcceptDetailsScreen.dart';
import 'Views/HomeScreen.dart';
import 'Views/NewOrdersScreen.dart';
import 'Views/ProfileDrawer.dart';
import 'Views/ResetPasswordScreen.dart';
import 'Views/SplashScreen.dart';
import 'Views/OnboardingScreen.dart';

void main() {
  runApp(RiderApp());
}
class RiderApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewOrdersScreen(),
    );
  }
}

