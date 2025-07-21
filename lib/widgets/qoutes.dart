import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';

class QoutesDesktop extends StatelessWidget {
  final double screenWidth;
  const QoutesDesktop({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.6,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: CustomColor.headingC.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: Text(
                  "\"With great power comes great electricity bill\"",
                  style: GoogleFonts.firaCode(
                    fontSize: screenWidth * 0.017,
                    color: CustomColor.headingC,
                    // fontSize: ,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: screenWidth * 0.442),
            Container(
              width: screenWidth * 0.157,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 2,
                    color: CustomColor.headingC.withOpacity(0.5),
                  ),
                  right: BorderSide(
                    width: 2,
                    color: CustomColor.headingC.withOpacity(0.5),
                  ),
                  bottom: BorderSide(
                    width: 2,
                    color: CustomColor.headingC.withOpacity(0.5),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  "- Dr. Who",
                  style: GoogleFonts.firaCode(
                    fontSize: screenWidth * 0.017,
                    color: CustomColor.headingC,
                    // fontSize: ,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
