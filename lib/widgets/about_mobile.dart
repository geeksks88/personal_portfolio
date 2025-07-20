import 'package:flutter/material.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class AboutMobile extends StatelessWidget {
  final double screenWidth;
  const AboutMobile({super.key, required this.screenWidth});

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
                'A\nB\nO\nU\nT',
                style: TextStyles(screenWidth: screenWidth * 0.8).headM,
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(
                'M\nE',
                style: TextStyles(screenWidth: screenWidth * 0.8).headM,
              ),
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  // top: 15,
                  left: 15,
                  right: 15,
                  // bottom: 15,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts. I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences. With a solid foundation in robotics and IoT, I bridge both hardware and software domains. My creativity and technical skills drive me to keep learning and solving real-world problems innova-ively.",
                  style: TextStyles(screenWidth: screenWidth).desM2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
