import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPageInfoComponent extends StatelessWidget {
  final IconData userIcon;
  final String label;


  AccountPageInfoComponent({
    @required this.userIcon,
    @required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Row(
          children: [
            Container(
              child: Icon(
                userIcon,
                color: Colors.black,
                size: 26,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              child: Text(
                label,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}