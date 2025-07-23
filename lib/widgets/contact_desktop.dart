import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class ContactDesktop extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ContactDesktop({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.8),
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.01),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth * 2).hassS,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "get in touch",
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight * 0.38,
                        width: screenWidth * 0.35,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border.all(
                            // width: 1,
                            // color: CustomColor.hassC,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20,
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "/* Building something cool or got an opportunity? Ping me via the form or let’s link up on the socials. */",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.vt323(
                                  color: Colors.white,
                                  fontSize:
                                      screenWidth > 900
                                          ? screenWidth * 0.015
                                          : screenWidth * 0.018,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.04),
                              Row(
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.email, color: Colors.white),
                                  SizedBox(width: screenWidth * 0.01),
                                  Text(
                                    "davasnsujal@gmail.com",
                                    style: GoogleFonts.firaCode(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          screenWidth > 900
                                              ? screenWidth * 0.012
                                              : screenWidth * 0.015,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.03),
                              Row(
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.phone, color: Colors.white),
                                  SizedBox(width: screenWidth * 0.01),
                                  Text(
                                    "9128128817",
                                    style: GoogleFonts.firaCode(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          screenWidth > 900
                                              ? screenWidth * 0.012
                                              : screenWidth * 0.015,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.03),
                              Row(
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.location_on, color: Colors.white),
                                  SizedBox(width: screenWidth * 0.01),
                                  Text(
                                    "West Bengal, India",
                                    style: GoogleFonts.firaCode(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize:
                                          screenWidth > 900
                                              ? screenWidth * 0.012
                                              : screenWidth * 0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: screenWidth * 0.018),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight * 0.07,
                          // width: screenWidth * 0.35,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: CustomColor.hassC,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                style: GoogleFonts.firaCode(
                                  color: Colors.white,
                                  fontSize:
                                      screenWidth > 900
                                          ? screenWidth * 0.01
                                          : screenWidth * 0.015,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: "Your Name here",

                                  // labelText: "Name",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.07,
                          // width: screenWidth * 0.35,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: CustomColor.hassC,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                style: GoogleFonts.firaCode(
                                  color: Colors.white,
                                  fontSize:
                                      screenWidth > 900
                                          ? screenWidth * 0.01
                                          : screenWidth * 0.015,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: "email@example.com",

                                  // labelText: "Name",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.2,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: CustomColor.hassC,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    top: 5,
                                    right: 20,
                                  ),
                                  child: TextField(
                                    // expands: true,
                                    maxLines: 5,
                                    // maxLength: 20,
                                    style: GoogleFonts.firaCode(
                                      color: Colors.white,

                                      fontSize:
                                          screenWidth > 900
                                              ? screenWidth * 0.01
                                              : screenWidth * 0.015,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Your Thoughts/Advice",

                                      // labelText: "Name",
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {},
                                  hoverColor: CustomColor.hassC,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  child: Container(
                                    width: screenHeight * 0.95,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: CustomColor.hassC,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      // color: Colors.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "S E N D",
                                        style: GoogleFonts.firaCode(
                                          color: CustomColor.hassC,
                                          fontSize: screenWidth * 0.014,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
