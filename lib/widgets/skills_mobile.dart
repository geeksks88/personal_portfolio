import 'package:flutter/material.dart';
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
              border: Border.all(width: 1.5, color: CustomColor.hassC),
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
                    border: Border.all(width: 1, color: CustomColor.headingC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/andriod.png", height: 45),
                        Text(
                          "Android App Development",
                          style: TextStyles(screenWidth: screenWidth).desM,
                        ),
                        SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.center,
                          "I don’t just build apps, I Flutter through bugs — smooth as animations and sharp as Dart!",
                          style: TextStyles(screenWidth: screenWidth).sDesc,
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/flutter.png",
                                      height: screenHeight * 0.03,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Flutter",
                                      style:
                                          TextStyles(
                                            screenWidth: screenWidth * 1.8,
                                          ).desD,
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.009),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/sqlite.png",
                                      height: screenHeight * 0.03,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "SQLite",
                                      style:
                                          TextStyles(
                                            screenWidth: screenWidth * 1.8,
                                          ).desD,
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.009),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/fireB.png",
                                      height: screenHeight * 0.03,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Firebase",
                                      style:
                                          TextStyles(
                                            screenWidth: screenWidth * 1.8,
                                          ).desD,
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                    border: Border.all(width: 1, color: CustomColor.headingC),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Image.asset("assets/appleb.png", height: 45),
                        Text(
                          "iOS App Development",
                          style: TextStyles(screenWidth: screenWidth).desM,
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
                    border: Border.all(width: 1, color: CustomColor.headingC),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Image.asset("assets/uiux.png", height: 45),
                        Text(
                          textAlign: TextAlign.center,
                          "UI/UX &\nGraphics Designing",
                          style: TextStyles(screenWidth: screenWidth).desM,
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
                    border: Border.all(width: 1, color: CustomColor.headingC),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Image.asset("assets/CW.png", height: 45),
                        Text(
                          textAlign: TextAlign.center,
                          "Content Writing",
                          style: TextStyles(screenWidth: screenWidth).desM,
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
