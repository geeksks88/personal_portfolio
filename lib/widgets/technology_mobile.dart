import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class TechnologyMobile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const TechnologyMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: screenWidth * 0.2,
              width: screenWidth * 0.65,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1.5, color: Colors.red),
                  top: BorderSide(width: 1.5, color: Colors.red),
                  bottom: BorderSide(width: 1.5, color: Colors.red),
                ),
                // color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'T E C H - W H E E L',
                    style: TextStyles(screenWidth: screenWidth * 0.8).headM,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.035),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleList(
              innerRadius: screenWidth * 0.12,
              outerRadius: screenWidth * 0.34,
              origin: Offset.zero,
              rotateMode: RotateMode.allRotate,
              // isChildrenVertical: false,
              showInitialAnimation: true,
              innerCircleColor: Colors.red.withOpacity(0.05),
              outerCircleColor: Colors.white.withOpacity(0.02),
              childrenPadding: 20,
              centerWidget: CircleAvatar(
                backgroundColor: CustomColor.hassC,
                radius: screenWidth * 0.09,
                child: Center(
                  child: Text(
                    "DevKit",
                    style: GoogleFonts.vt323(
                      color: Colors.white,
                      fontSize: screenWidth * 0.038,
                    ),
                  ),
                ),
              ),
              children: [
                Tooltip(
                  message: "Flutter",
                  child: Image.asset(
                    "assets/f.png",
                    scale: screenWidth * 0.004,
                  ),
                ),
                Tooltip(
                  message: "Firebase",
                  child: Image.asset(
                    "assets/fir.png",
                    scale: screenWidth * 0.004,
                  ),
                ),
                Tooltip(
                  message: "Canva",
                  child: Image.asset(
                    "assets/ca.png",
                    scale: screenWidth * 0.001,
                  ),
                ),
                Tooltip(
                  message: "Figma",
                  child: Image.asset(
                    "assets/fi.png",
                    scale: screenWidth * 0.04,
                  ),
                ),
                Tooltip(
                  message: "Sqlite",
                  child: Image.asset(
                    "assets/sqlite.png",
                    color: Colors.white,
                    scale: screenHeight * 0.0014,
                  ),
                ),
                Tooltip(
                  message: "VS Code",
                  child: Image.asset(
                    "assets/vsc2.png",
                    scale: screenWidth * 0.01,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.025),
            CircleList(
              innerRadius: screenWidth * 0.12,
              outerRadius: screenWidth * 0.34,
              rotateMode: RotateMode.allRotate,

              origin: Offset.zero,
              // isChildrenVertical: false,
              showInitialAnimation: true,
              innerCircleColor: Colors.red.withOpacity(0.05),
              outerCircleColor: Colors.white.withOpacity(0.02),
              childrenPadding: 20,
              centerWidget: CircleAvatar(
                backgroundColor: CustomColor.hassC,
                radius: screenWidth * 0.09,
                child: Center(
                  child: Text(
                    "Lingua",
                    style: GoogleFonts.vt323(
                      color: Colors.white,
                      fontSize: screenWidth * 0.038,
                    ),
                  ),
                ),
              ),
              children: [
                Tooltip(
                  message: "Dart",
                  child: Image.asset(
                    "assets/drt.png",
                    scale: screenWidth * 0.033,
                  ),
                ),

                Tooltip(
                  message: "C",
                  child: Image.asset(
                    "assets/3.png",
                    scale: screenWidth * 0.032,
                  ),
                ),
                Tooltip(
                  message: "Cpp",
                  child: Image.asset(
                    "assets/4.png",
                    scale: screenWidth * 0.028,
                  ),
                ),
                Tooltip(
                  message: "Python",
                  child: Image.asset(
                    "assets/5.png",
                    scale: screenWidth * 0.028,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
