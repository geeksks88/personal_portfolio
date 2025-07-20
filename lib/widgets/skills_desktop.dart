// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class SkillsDesktop extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const SkillsDesktop({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text("#", style: TextStyles(screenWidth: screenWidth * 2).hassS),
              SizedBox(width: 2),
              Text(
                "skills",
                style: TextStyles(screenWidth: screenWidth * 0.7).headD,
              ),
              SizedBox(width: 2),
              Text(
                " -------------/",
                style: TextStyles(screenWidth: screenWidth * 0.7).headD,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5, top: 35),
          child: Container(
            height: screenHeight * 0.8,
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 0.25,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("droid.jpg"),
                          fit: BoxFit.cover,
                          opacity: 0.08,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.redAccent,
                        //     blurStyle: BlurStyle.outer,
                        //     blurRadius: 6,
                        //     // spreadRadius:
                        //   ),
                        // ],
                        border: Border.all(
                          width: 1.5,
                          color: Colors.red.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: CustomColor.raisedBg2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ANDROID APP",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.022,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "DEVELOPMENT",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.024,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 0.25,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("oss4.png"),
                          fit: BoxFit.cover,
                          opacity: 0.08,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.redAccent,
                        //     blurStyle: BlurStyle.outer,
                        //     blurRadius: 5,
                        //   ),
                        // ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.red.withOpacity(0.3),
                        ),
                        color: CustomColor.raisedBg2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "iOS APP",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.022,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "DEVELOPMENT",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.024,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 0.25,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("CW1.jpeg"),
                          fit: BoxFit.cover,
                          opacity: 0.08,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.redAccent,
                        //     blurStyle: BlurStyle.outer,
                        //     blurRadius: 5,
                        //   ),
                        // ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.red.withOpacity(0.3),
                        ),
                        color: CustomColor.raisedBg2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "CONTENT",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.022,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WRITER",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.024,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 0.25,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("dddd.jpeg"),
                          fit: BoxFit.cover,
                          opacity: 0.08,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.redAccent,
                        //     blurStyle: BlurStyle.outer,
                        //     blurRadius: 5,
                        //     // spreadRadius:
                        //   ),
                        // ],
                        border: Border.all(
                          width: 1.5,
                          color: Colors.red.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: CustomColor.raisedBg2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "GRAPHICS",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.022,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "DESIGNER",
                                style: GoogleFonts.courierPrime(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 30),
                                  ],
                                  color: CustomColor.headingCk,
                                  fontSize: screenWidth * 0.024,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
