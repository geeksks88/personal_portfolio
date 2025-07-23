import 'package:flutter/material.dart';
import 'package:circle_list/circle_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';

class HoverRotatingCircleList extends StatefulWidget {
  const HoverRotatingCircleList({super.key});

  @override
  State<HoverRotatingCircleList> createState() =>
      _HoverRotatingCircleListState();
}

class _HoverRotatingCircleListState extends State<HoverRotatingCircleList> {
  // bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleList(
          innerRadius: screenWidth * 0.06,
          outerRadius: screenWidth * 0.18,
          origin: Offset.zero,
          // isChildrenVertical: false,
          showInitialAnimation: true,
          innerCircleColor: Colors.black,
          outerCircleColor: CustomColor.raisedBg2,
          childrenPadding: 20,
          centerWidget: CircleAvatar(
            backgroundColor: CustomColor.hassC,
            radius: screenWidth * 0.053,
            child: Center(
              child: Text(
                "DevKit",
                style: GoogleFonts.vt323(
                  color: Colors.white,
                  fontSize: screenWidth * 0.019,
                ),
              ),
            ),
          ),
          children: [
            Tooltip(
              message: "Flutter",
              child: Image.asset("assets/f.png", scale: screenWidth * 0.004),
            ),
            Tooltip(
              message: "Firebase",
              child: Image.asset("assets/fir.png", scale: screenWidth * 0.004),
            ),
            Tooltip(
              message: "Canva",
              child: Image.asset("assets/ca.png", scale: screenWidth * 0.004),
            ),
            Tooltip(
              message: "Figma",
              child: Image.asset("assets/fi.png", scale: screenWidth * 0.004),
            ),
            Tooltip(
              message: "Sqlite",
              child: Image.asset(
                "assets/sqlite.png",
                color: Colors.white,
                scale: screenHeight * 0.001,
              ),
            ),
            Tooltip(
              message: "VS Code",
              child: Image.asset("assets/vsc2.png", scale: screenWidth * 0.004),
            ),
          ],
        ),
        // SizedBox(width: screenWidth * 0.06),
        CircleList(
          innerRadius: screenWidth * 0.06,
          outerRadius: screenWidth * 0.18,
          origin: Offset.zero,
          // isChildrenVertical: false,
          showInitialAnimation: true,
          innerCircleColor: Colors.black,
          outerCircleColor: CustomColor.raisedBg2,
          childrenPadding: 20,
          centerWidget: CircleAvatar(
            backgroundColor: CustomColor.hassC,
            radius: screenWidth * 0.053,
            child: Center(
              child: Text(
                "Lingua",
                style: GoogleFonts.vt323(
                  color: Colors.white,
                  fontSize: screenWidth * 0.019,
                ),
              ),
            ),
          ),
          children: [
            Tooltip(
              message: "Dart",
              child: Image.asset("assets/drt.png", scale: screenWidth * 0.0045),
            ),

            Tooltip(
              message: "C",
              child: Image.asset("assets/3.png", scale: screenWidth * 0.0045),
            ),
            Tooltip(
              message: "Cpp",
              child: Image.asset("assets/4.png", scale: screenWidth * 0.004),
            ),
            Tooltip(
              message: "Python",
              child: Image.asset("assets/5.png", scale: screenWidth * 0.004),
            ),
          ],
        ),
      ],
    );
  }
}
