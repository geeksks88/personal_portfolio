import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class SkillsMobile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const SkillsMobile({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: screenWidth * 0.75,
          width: screenWidth * 0.2,
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
                'S\nK\nI\nL\nL\nS',
                style: TextStyles(screenWidth: screenWidth * 0.8).headM,
              ),
              SizedBox(height: screenWidth * 0.02),
            ],
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Container(
            height: screenWidth * 0.75,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: CustomColor.hoverColor),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: 10,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                //android
                Container(
                  width: screenWidth * 0.565,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.headingC.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/andriod.png", height: 45),
                        Text(
                          "Android App Development",
                          style: TextStyles(screenWidth: screenWidth).desM,
                        ),
                        SizedBox(height: screenWidth * 0.03),
                        Text(
                          textAlign: TextAlign.center,
                          "I don’t just build apps, I Flutter through bugs — smooth as animations and sharp as Dart!",
                          style: GoogleFonts.firaCode(
                            fontWeight: FontWeight.w100,
                            fontSize: screenWidth * 0.043,
                            color: CustomColor.hassC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //iOS
                SizedBox(width: 11),
                Container(
                  width: screenWidth * 0.565,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.headingC.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Column(
                      children: [
                        Image.asset("assets/appleb.png", height: 45),
                        Text(
                          "iOS App Development",
                          style: TextStyles(screenWidth: screenWidth).desM,
                        ),
                        SizedBox(height: screenWidth * 0.03),
                        Text(
                          textAlign: TextAlign.center,
                          "I don’t just build apps, I compose solutions for bugs — seamless as SwiftUI and sharp as Swift!",
                          style: GoogleFonts.firaCode(
                            fontWeight: FontWeight.w100,
                            fontSize: screenWidth * 0.041,
                            color: CustomColor.hassC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 11),
                Container(
                  width: screenWidth * 0.565,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.headingC.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Column(
                      children: [
                        Image.asset("assets/uiux.png", height: 45),
                        Text(
                          textAlign: TextAlign.center,
                          "Graphics Designing",
                          style: TextStyles(screenWidth: screenWidth).desM,
                        ),
                        SizedBox(height: screenWidth * 0.03),
                        Text(
                          textAlign: TextAlign.center,
                          "Beyond just layouts, I illustrate ideas. My visuals are as balanced as the composition, with messaging as bold as the typography.",
                          style: GoogleFonts.firaCode(
                            fontWeight: FontWeight.w100,
                            fontSize: screenWidth * 0.036,
                            color: CustomColor.hassC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 11),
                Container(
                  width: screenWidth * 0.565,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.headingC.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Column(
                      children: [
                        Image.asset("assets/CW.png", height: 45),
                        Text(
                          textAlign: TextAlign.center,
                          "Content Writing",
                          style: TextStyles(screenWidth: screenWidth).desM,
                        ),
                        SizedBox(height: screenWidth * 0.03),
                        Text(
                          textAlign: TextAlign.center,
                          "Far more than just sentences, I build arguments. My ideas are engineered to persuade, with language that punches.",
                          style: GoogleFonts.firaCode(
                            fontWeight: FontWeight.w100,
                            fontSize: screenWidth * 0.036,
                            color: CustomColor.hassC,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
