import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rider_app/Components/RiderRequestCardComponent.dart';
import 'package:rider_app/Components/TextButtonComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Views/HomeScreen.dart';
import 'package:rider_app/Views/ProfileDrawer.dart';

import '../ConstantColors.dart';

class RequestDetailsScreen extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                bottom: 43,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RiderRequestCardComponent(
                  label1: 'Pick Up',
                  label2: 'Ashaley-Botwe',
                  label3: 'Street name',
                  label4: 'Drop off',
                  label5: 'Westlands',
                  label6: 'Street name',
                  label7: 'Total distance',
                  label8: '30 km',
                  label9: 'Est time',
                  label10: '30 mins',
                  jobText1: 'Accept job',
                  jobText2: 'Ignore job',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
