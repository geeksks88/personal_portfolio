import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';

class TextStyles {
  final double screenWidth;
  TextStyles({required this.screenWidth});

  TextStyle get headerS => TextStyle(
    fontSize: screenWidth * 0.015,
    color: Colors.white38,
    fontFamily: "name",
  );

  TextStyle get hassS =>
      TextStyle(fontSize: screenWidth * 0.013, color: CustomColor.hassC);

  TextStyle get nameD => TextStyle(
    fontSize: screenWidth * 0.025,
    color: CustomColor.titleC,
    fontFamily: "name",
  );

  TextStyle get nameM => TextStyle(
    fontSize: screenWidth * 0.065,
    color: CustomColor.headingC,
    fontFamily: "name",
  );

  TextStyle get introS => TextStyle(
    fontSize: screenWidth * 0.032,
    color: CustomColor.hoverColor,
    fontFamily: "name",
  );
  TextStyle get introS2 => TextStyle(
    fontSize: screenWidth * 0.038,
    color: CustomColor.hassC,
    fontFamily: "name",
  );
  TextStyle get introM => TextStyle(
    fontSize: screenWidth * 0.052,
    color: CustomColor.hoverColor,
    fontFamily: "name",
  );
  TextStyle get introM2 => TextStyle(
    fontSize: screenWidth * 0.058,
    color: CustomColor.hassC,
    fontFamily: "name",
  );
  TextStyle get headM => TextStyle(
    fontSize: screenWidth * 0.07,
    color: CustomColor.headingC,
    fontFamily: "name",
  );
  TextStyle get headD => TextStyle(
    fontSize: screenWidth * 0.05,
    color: CustomColor.headingC,
    fontFamily: "name",
  );
  TextStyle get desM => TextStyle(
    fontSize: screenWidth * 0.035,
    color: CustomColor.hoverColor,
    fontFamily: "name",
  );
  TextStyle get desM2 => GoogleFonts.firaCode(
    fontSize: screenWidth * 0.029,
    color: CustomColor.hoverColor,
  );
  TextStyle get desD => TextStyle(
    fontSize: screenWidth * 0.025,
    color: CustomColor.hoverColor,
    fontFamily: "name",
  );
  TextStyle get sDesc => TextStyle(
    fontSize: screenWidth * 0.032,
    color: CustomColor.hassC,
    fontFamily: "name",
  );
}
