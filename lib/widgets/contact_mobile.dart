import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class ContactMobile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ContactMobile({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: screenWidth * 0.02),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: screenWidth * 0.2,
                  width: screenWidth * 0.65,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Colors.red),
                      right: BorderSide(width: 1.5, color: Colors.red),
                      top: BorderSide(width: 1.5, color: Colors.red),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "C O N T A C T - M E",
                        style: TextStyles(screenWidth: screenWidth * 0.8).headM,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),

            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.022,
                right: screenWidth * 0.022,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // width: screenWidth * 0.4,
                      // height: screenWidth * 0.13,
                      // color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Text(
                          "/* Building something cool or got an opportunity? Ping me via the form or let’s link up on the socials. */",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.vt323(
                            color: Colors.green,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.6,
                  height: screenWidth * 0.4,
                  // color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment:
                          // MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.email, color: Colors.yellow),
                            SizedBox(width: screenWidth * 0.04),
                            Text(
                              "davasnsujal@gmail.com",
                              style: GoogleFonts.firaCode(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    screenWidth > 900
                                        ? screenWidth * 0.012
                                        : screenWidth * 0.03,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Row(
                          // mainAxisAlignment:
                          // MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.phone, color: Colors.blue),
                            SizedBox(width: screenWidth * 0.04),
                            Text(
                              "9128128817",
                              style: GoogleFonts.firaCode(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    screenWidth > 900
                                        ? screenWidth * 0.012
                                        : screenWidth * 0.03,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Row(
                          // mainAxisAlignment:
                          // MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.location_on, color: Colors.red),
                            SizedBox(width: screenWidth * 0.04),
                            Text(
                              "West Bengal, India",
                              style: GoogleFonts.firaCode(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    screenWidth > 900
                                        ? screenWidth * 0.012
                                        : screenWidth * 0.03,
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

            SizedBox(height: screenWidth * 0.01),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
                right: screenWidth * 0.04,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.06,
                      // width: screenWidth * 0.35,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        border: Border.all(width: 1, color: CustomColor.hassC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          // top: screenWidth * 0.003,
                          left: screenWidth * 0.025,
                          // bottom: screenWidth * 0.03,
                        ),
                        child: TextField(
                          maxLines: 10,
                          style: GoogleFonts.firaCode(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize:
                                screenWidth > 900
                                    ? screenWidth * 0.01
                                    : screenWidth * 0.035,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Drop Your Thoughts.....",
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send_outlined,
                                size: screenWidth * 0.06,
                              ),
                            ),

                            // labelText: "Name",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
