import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'dart:js' as js ;

class ProjectsDesktop extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ProjectsDesktop({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius radius = BorderRadius.circular(screenWidth * 0.01);
    Text ProjectTitle(String title, double x) {
      return Text(
        title,
        style: GoogleFonts.firaCode(
          color: Colors.white,
          fontSize: screenWidth * x,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text("#", style: TextStyles(screenWidth: screenWidth * 2).hassS),
              SizedBox(width: 2),
              Text(
                "projects",
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
          padding: EdgeInsets.only(
            left: screenWidth * 0.02,
            right: screenWidth * 0.02,
            top: 35,
          ),
          child: SingleChildScrollView(
            controller: ScrollController(
              initialScrollOffset: screenWidth * 0.04,
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenWidth >= 900
                        ? Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.24,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            color: CustomColor.raisedBg2,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.015,
                              right: screenWidth * 0.015,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.38,
                                        decoration: BoxDecoration(
                                          borderRadius: radius,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/Weigh.jpg",

                                            // scale: 1,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.025),
                                SizedBox(
                                  // color: Colors.amber,
                                  width: screenWidth * 0.18,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      ProjectTitle("WeighWise", 0.018),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        : Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.29,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            color: CustomColor.raisedBg2,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.015,
                              right: screenWidth * 0.015,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.37,
                                        decoration: BoxDecoration(
                                          borderRadius: radius,
                                          border: Border.all(
                                            width: 0.8,
                                            color: Colors.white60,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/Weigh.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ProjectTitle("WeighWise", 0.022)],
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: screenWidth * 0.15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.02),
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    screenWidth >= 900
                        ? Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.25,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.025,
                              right: screenWidth * 0.025,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.38,
                                        decoration: BoxDecoration(
                                          // color: Colors.black,
                                          borderRadius: radius,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/hPTASK.jpg",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.025),
                                SizedBox(
                                  // color: Colors.amber,
                                  width: screenWidth * 0.18,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      ProjectTitle("WorkIT", 0.018),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        // : Container(
                        //   height: screenHeight * 0.6,
                        //   width: screenWidth * 0.27,
                        //   // color: Colors.amber,
                        //   decoration: BoxDecoration(
                        //     color: CustomColor.raisedBg2,
                        //     border: Border.all(
                        //       width: 1.5,
                        //       color: CustomColor.titleC.withOpacity(0.3),
                        //     ),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: Padding(
                        //     padding: EdgeInsets.all(screenWidth * 0.017),
                        //     child: Column(
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Expanded(
                        //               // height: screenHeight * 0.45,
                        //               // color: Colors.black,
                        //               child: Container(
                        //                 height: screenHeight * 0.45,
                        //                 decoration: BoxDecoration(
                        //                   borderRadius: radius,
                        //                 ),
                        //                 child: ClipRRect(
                        //                   borderRadius: radius,
                        //                   child: Image.asset(
                        //                     alignment: Alignment(0, -0.4),
                        //                     "assets/hPTASK.jpg",
                        //                     fit: BoxFit.cover,
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Row(
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [ProjectTitle("WorkIT", 0.025)],
                        //         ),
                        //         Row(
                        //           mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             IconButton(
                        //               // iconSize: screenWidth * 0.025,
                        //               // splashRadius: 50,
                        //               // splashColor: Colors.transparent,
                        //               // hoverColor: CustomColor.hoverColor,
                        //               // disabledColor: Colors.white,
                        //               tooltip: "GitHub Link",
                        //               onPressed: () {},
                        //               icon: LineIcon.github(
                        //                 size: screenWidth * 0.03,
                        //               ),
                        //             ),
                        //             IconButton(
                        //               tooltip: "APK Download",
                        //               onPressed: () {},
                        //               icon: LineIcon.download(
                        //                 size: screenWidth * 0.03,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        : Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.29,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            color: CustomColor.raisedBg2,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.015,
                              right: screenWidth * 0.015,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.37,
                                        decoration: BoxDecoration(
                                          borderRadius: radius,
                                          border: Border.all(
                                            width: 0.8,
                                            color: Colors.white60,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/hPTASK.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ProjectTitle("WorkIT", 0.024)],
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: screenWidth * 0.17,
                                  // color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.02),
                Column(
                  children: [
                    screenWidth >= 900
                        ? Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.24,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            color: CustomColor.raisedBg2,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.025,
                              right: screenWidth * 0.025,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.38,
                                        decoration: BoxDecoration(
                                          borderRadius: radius,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/breeze.jpg",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.025),
                                SizedBox(
                                  // color: Colors.amber,
                                  width: screenWidth * 0.18,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      ProjectTitle("Breeze", 0.018),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        : Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.29,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            color: CustomColor.raisedBg2,
                            border: Border.all(
                              width: 1.5,
                              color: CustomColor.titleC.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.015,
                              right: screenWidth * 0.015,
                              top: screenWidth * 0.015,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      // height: screenHeight * 0.45,
                                      // color: Colors.black,
                                      child: Container(
                                        height: screenHeight * 0.37,
                                        decoration: BoxDecoration(
                                          borderRadius: radius,
                                          border: Border.all(
                                            width: 0.8,
                                            color: Colors.white60,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: radius,
                                          child: Image.asset(
                                            alignment: Alignment(0, -0.74),
                                            "assets/breeze.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ProjectTitle("Breeze", 0.024)],
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  // color: Colors.white,
                                  width: screenWidth * 0.15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.github(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: LineIcon.download(
                                          size: screenWidth * 0.03,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
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
        SizedBox(height: screenHeight * 0.08),
        screenWidth > 900
            ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    hoverColor: CustomColor.hassC,
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    onTap: () {
                      launchWebsite('https://github.com/geeksks88');
                    },
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        border: Border.all(
                          width: 1.5,
                          color: CustomColor.titleC.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                      child: Center(
                        child: Text(
                          "See More",
                          style: GoogleFonts.firaCode(
                            color: CustomColor.headingCk,
                            fontSize: screenWidth * 0.01,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    splashColor: Colors.transparent,

                    // radius: 15,
                    hoverColor: CustomColor.hassC,
                    onTap: () {
                      launchWebsite(
                        "https://drive.google.com/drive/folders/1mktZMYucn1lZ_-IMXiHvUDSB1E35vbEB?usp=sharing",
                      );
                    },
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        border: Border.all(
                          width: 1.5,
                          color: CustomColor.titleC.withOpacity(0.3),
                        ),
                        // border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                      child: Center(
                        child: Text(
                          "GD Projects",
                          style: GoogleFonts.firaCode(
                            color: CustomColor.headingCk,
                            fontSize: screenWidth * 0.01,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.red,
                    hoverColor: CustomColor.hassC,
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    onTap: () {
                      launchWebsite('https://github.com/geeksks88');
                    },
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.2,

                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        border: Border.all(
                          width: 1.5,
                          color: CustomColor.titleC.withOpacity(0.3),
                        ),
                        // border: Border.all(width: 2),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black,
                        //     blurRadius: 1 ,
                        //     blurStyle: BlurStyle.outer,
                        //     // spreadRadius: 0.5,
                        //   ),
                        // ],
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                      child: Center(
                        child: Text(
                          "See More",
                          style: GoogleFonts.firaCode(
                            color: CustomColor.headingCk,
                            fontSize: screenWidth * 0.015,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.red,
                    hoverColor: Colors.red,
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    onTap: () {
                      launchWebsite(
                        "https://drive.google.com/drive/folders/1mktZMYucn1lZ_-IMXiHvUDSB1E35vbEB?usp=sharing",
                      );
                    },
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.2,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        // border: Border.all(width: 2),
                        border: Border.all(
                          width: 1.5,
                          color: CustomColor.titleC.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                      child: Center(
                        child: Text(
                          "GD Projects",
                          style: GoogleFonts.firaCode(
                            color: CustomColor.headingCk,
                            fontSize: screenWidth * 0.015,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
