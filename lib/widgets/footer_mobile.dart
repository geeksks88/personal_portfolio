import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';

class FooterMobile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const FooterMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: screenHeight * 0.2,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              top: screenHeight * 0.06,
            ),
            child: Divider(color: CustomColor.headingC.withOpacity(0.5)),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.code_outlined, color: CustomColor.headingC),
              Text(
                "</> Designed & Developed by Sujal with Flutter\n2025",
                textAlign: TextAlign.center,
                style: GoogleFonts.vt323(
                  color: CustomColor.headingC,
                  fontSize: screenWidth * 0.028,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
