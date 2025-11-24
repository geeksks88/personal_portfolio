import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleDesktop extends StatelessWidget {
  const MiddleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Column(
              spacing: 0,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Hii,",
                      style: TextStyles(screenWidth: screenWidth * 1.2).introS,
                    ),
                    Lottie.asset(
                      "assets/animations/namaste.json",
                      width: screenWidth * 0.05,
                    ),
                  ],
                ),
                Text(
                  "I'm Sujal",
                  style: TextStyles(screenWidth: screenWidth * 1.3).introS,
                ),
                SizedBox(
                  height: screenWidth * 0.07,
                  // color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText(
                            "A Graphics Designer",
                            speed: Duration(milliseconds: 50),
                            textStyle:
                                TextStyles(
                                  screenWidth: screenWidth * 1.13,
                                ).introS2,
                          ),
                          TyperAnimatedText(
                            "An App Developer",
                            speed: Duration(milliseconds: 50),
                            textStyle:
                                TextStyles(
                                  screenWidth: screenWidth * 1.13,
                                ).introS2,
                          ),
                          TyperAnimatedText(
                            "An UI/UX Enthusiast",
                            speed: Duration(milliseconds: 50),
                            textStyle:
                                TextStyles(
                                  screenWidth: screenWidth * 1.13,
                                ).introS2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchWebsite(
                          "https://drive.google.com/file/d/1SAJOPKWLx0fZJINPElfd2Gl9iaMlx_Rq/view?usp=sharing",
                        );
                      },

                      style: ButtonStyle(
                        overlayColor: WidgetStatePropertyAll(
                          Colors.transparent,
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: CustomColor.hassC,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(screenHeight * 0.015),
                              bottomRight: Radius.circular(
                                screenHeight * 0.015,
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.016,
                          bottom: screenHeight * 0.016,
                          left: screenWidth * 0.0046,
                          right: screenWidth * 0.0046,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Resume",
                              style: GoogleFonts.firaCode(
                                fontSize: screenWidth * 0.016,
                                color: CustomColor.hassC,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Icon(
                              Icons.download_outlined,
                              color: CustomColor.hassC,
                              size: screenWidth * 0.016,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.04),
          child: Container(
            height:
                screenWidth >= 920 ? screenWidth * 0.34 : screenWidth * 0.34,
            width: screenWidth >= 920 ? screenWidth * 0.34 : screenWidth * 0.34,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              shape: BoxShape.circle,
              border: Border.all(width: 4, color: CustomColor.hassC),
              // color: CustomColor.hassC,
            ),
            child: CircleAvatar(
              // radius: screenWidth * 0.0001,
              // radius: 46,
              backgroundColor: Colors.black.withOpacity(0.35),
              backgroundImage: AssetImage("assets/sdp.png"),
            ),
          ),
        ),
      ],
    );
  }

  void launchWebsite(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'could not launch $url';
    }
  }
}
