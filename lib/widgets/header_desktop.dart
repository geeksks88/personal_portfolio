// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:my_portfolio_main/widgets/about_desktop.dart';
import 'package:my_portfolio_main/widgets/contact_desktop.dart';
import 'package:my_portfolio_main/widgets/footer_desktop.dart';
import 'package:my_portfolio_main/widgets/middle_desktop.dart';
import 'package:my_portfolio_main/widgets/projects_desktop.dart';
import 'package:my_portfolio_main/widgets/qoutes.dart';
import 'package:my_portfolio_main/widgets/skills_desktop.dart';
import 'package:my_portfolio_main/widgets/technology_desktop.dart';
// import 'package:my_portfolio_main/widgets/qoutes.dart';

class HeaderDesktop extends StatelessWidget {
  final scrollController = ScrollController();

  final List<GlobalKey> navigationKeys = List.generate(
    5,
    (index) => GlobalKey(),
  );
  final Function(int) onNavigationTap;

  HeaderDesktop({super.key, required this.onNavigationTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Center(
      child: Container(
        width: screenWidth * 0.88,
        height: screenHeight,
        decoration: BoxDecoration(
          border: Border.symmetric(
            vertical: BorderSide(
              width: 0.5,

              color: CustomColor.headingC.withOpacity(0.5),
            ),
          ),
          color: Colors.black.withOpacity(0.6),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
                top: 20,
                left: 30,
                bottom: 10,
              ),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sujal </>",
                    style: TextStyles(screenWidth: screenWidth).nameD,
                  ),
                  Row(
                    children: [
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth).hassS,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        // radius: 0,
                        onTap: () {
                          onNavigationTap(0);
                          scrolltoSection(0);
                          print("Home Tapped");
                        },

                        child: Text(
                          "home",
                          style: TextStyles(screenWidth: screenWidth).headerS,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth).hassS,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          onNavigationTap(1);
                          scrolltoSection(1);
                        },
                        child: Text(
                          "aboutme",
                          style: TextStyles(screenWidth: screenWidth).headerS,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth).hassS,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          onNavigationTap(2);
                          scrolltoSection(2);
                        },
                        child: Text(
                          "skills",
                          style: TextStyles(screenWidth: screenWidth).headerS,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth).hassS,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          onNavigationTap(3);
                          scrolltoSection(3);
                        },
                        child: Text(
                          "projects",
                          style: TextStyles(screenWidth: screenWidth).headerS,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "#",
                        style: TextStyles(screenWidth: screenWidth).hassS,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          onNavigationTap(4);
                          scrolltoSection(4);
                        },
                        child: Text(
                          "contact",
                          style: TextStyles(screenWidth: screenWidth).headerS,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                controller: scrollController,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenWidth * 0.06,
                      key: navigationKeys.first,
                    ),
                    //AboutMe
                    MiddleDesktop(),
                    SizedBox(height: screenHeight * 0.28),
                    QoutesDesktop(screenWidth: screenWidth),
                    SizedBox(height: screenHeight * 0.28),
                    AboutDesktop(
                      screenWidth: screenWidth,
                      key: navigationKeys[1],
                    ),
                    SizedBox(height: screenHeight * 0.28),
                    SkillsDesktop(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      key: navigationKeys[2],
                    ),
                    SizedBox(height: screenHeight * 0.28),
                    TechnologyDesktop(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    SizedBox(height: screenHeight * 0.28),
                    ProjectsDesktop(
                      key: navigationKeys[3],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    SizedBox(height: screenHeight * 0.28),
                    ContactDesktop(
                      key: navigationKeys[4],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    // SizedBox(height: screenHeight * 0.28),
                    FooterDesktop(
                      // key: navigationKeys[4],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void scrolltoSection(int navigationIndex) {
    final key = navigationKeys[navigationIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 1500),
      curve: Curves.easeOut,
    );
  }
}
