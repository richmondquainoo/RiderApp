
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants.dart';

class ProgressDialog extends StatelessWidget {
  final String displayMessage;

  ProgressDialog({@required this.displayMessage});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(kPrimaryDarkColor),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(
                displayMessage,
                style: GoogleFonts.lato(
                  color: kPrimaryTextColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


