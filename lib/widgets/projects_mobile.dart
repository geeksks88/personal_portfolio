import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsMobile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ProjectsMobile({
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
                    'P R O J E C T S',
                    style: TextStyles(screenWidth: screenWidth * 0.8).headM,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.08),
        Column(
          spacing: screenWidth * 0.1,
          children: [
            Container(
              height: screenWidth * 0.72,
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(width: 1, color: CustomColor.headingC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  right: screenWidth * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.52,
                      width: screenWidth * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/hPTASK.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment(0, 0.94),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.035),
                      child: Row(
                        children: [
                          InkWell(
                            child: LineIcon.fileDownload(
                              color: Colors.grey,
                              size: screenWidth * 0.1,
                            ),
                          ),
                          InkWell(
                            child: LineIcon.githubSquare(
                              color: Colors.grey,
                              size: screenWidth * 0.11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: screenWidth * 0.72,
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(width: 1, color: CustomColor.headingC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  right: screenWidth * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.52,
                      width: screenWidth * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/Weigh.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment(0, -0.88),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.035),
                      child: Row(
                        children: [
                          InkWell(
                            child: LineIcon.fileDownload(
                              color: Colors.grey,
                              size: screenWidth * 0.1,
                            ),
                          ),
                          InkWell(
                            child: LineIcon.githubSquare(
                              color: Colors.grey,
                              size: screenWidth * 0.11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: screenWidth * 0.72,
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(width: 1, color: CustomColor.headingC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenWidth * 0.01,
                  left: screenWidth * 0.01,
                  right: screenWidth * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.52,
                      width: screenWidth * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/breeze.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment(0, 0.72),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.035),
                      child: Row(
                        children: [
                          InkWell(
                            child: LineIcon.fileDownload(
                              color: Colors.grey,
                              size: screenWidth * 0.1,
                            ),
                          ),
                          InkWell(
                            child: LineIcon.githubSquare(
                              color: Colors.grey,
                              size: screenWidth * 0.11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
              ),
              child: Row(
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
                        height: screenWidth * 0.1,
                        width: screenWidth * 0.28,

                        decoration: BoxDecoration(
                          color: CustomColor.raisedBg2,
                          border: Border.all(
                            width: 1.5,
                            color: CustomColor.titleC.withOpacity(0.3),
                          ),

                          borderRadius: BorderRadius.circular(
                            screenWidth * 0.02,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "See More",
                            style: GoogleFonts.firaCode(
                              color: CustomColor.headingCk,
                              fontSize: screenWidth * 0.025,
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
                        height: screenWidth * 0.1,
                        width: screenWidth * 0.28,
                        decoration: BoxDecoration(
                          color: CustomColor.raisedBg2,
                          // border: Border.all(width: 2),
                          border: Border.all(
                            width: 1.5,
                            color: CustomColor.titleC.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(
                            screenWidth * 0.02,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "GD Projects",
                            style: GoogleFonts.firaCode(
                              color: CustomColor.headingCk,
                              fontSize: screenWidth * 0.025,
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
