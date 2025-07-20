// import 'package:circle_list/circle_list.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:my_portfolio_main/widgets/try.dart';

class TechnologyDesktop extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const TechnologyDesktop({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                "tech-wheel",
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
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 35),
          child: HoverRotatingCircleList(),
        ),
      ],
    );
  }
}
