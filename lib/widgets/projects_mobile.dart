import 'package:flutter/material.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

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
          children: [
            Container(
              height: screenHeight * 0.32,
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border.all(width: 1, color: CustomColor.headingC),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
