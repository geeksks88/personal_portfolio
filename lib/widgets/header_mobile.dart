import 'package:flutter/material.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
// import 'package:my_portfolio_main/widgets/about_dropdown.dart';
import 'package:my_portfolio_main/widgets/about_mobile.dart';
import 'package:my_portfolio_main/widgets/middle_mobile.dart';
// import 'package:my_portfolio_main/widgets/qoutes.dart';
import 'package:my_portfolio_main/widgets/qoutes_mobile.dart';
import 'package:my_portfolio_main/widgets/skills_mobile.dart';
// import 'package:my_portfolio_main/widgets/middle_desktop.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Center(
      child: Container(
        width: screenWidth * 0.85,
        height: screenHeight,
        decoration: BoxDecoration(
          border: Border.symmetric(
            vertical: BorderSide(
              width: 0.5,
              color: CustomColor.headingC.withOpacity(0.5),
            ),
          ),
          color: Colors.black,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.85,
                  // color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: screenHeight * 0.012,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      // textBaseline: TextBaseline.ideographic,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sujal </>",
                          style: TextStyles(screenWidth: screenWidth).nameM,
                        ),
                        Builder(
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              child: Icon(
                                Icons.menu,
                                color: CustomColor.headingC,
                                size: screenWidth * 0.06,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                MiddleMobile(),
                SizedBox(height: screenHeight * 0.1),
                QoutesMobile(screenWidth: screenWidth),
                SizedBox(height: screenHeight * 0.1),
                AboutMobile(screenWidth: screenWidth),
                SizedBox(height: screenHeight * 0.1),
                SkillsMobile(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
