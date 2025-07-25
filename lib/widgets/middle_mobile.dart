import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class MiddleMobile extends StatelessWidget {
  const MiddleMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(color: Colors.black, offset: Offset(0, 4)),
              // ],
              shape: BoxShape.circle,
              border: Border.all(width: 4, color: CustomColor.hassC),
              // color: CustomColor.hassC,
            ),
            child: CircleAvatar(
              // radius: screenWidth * 0.0001,
              // radius: 46,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/sdp.png",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Column(
            spacing: 0,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hii,", style: TextStyles(screenWidth: screenWidth).introM),
              Text(
                "I'm Sujal Kr Singh",
                style: TextStyles(screenWidth: screenWidth).introM,
              ),
              Container(
                height: 50,
                // color: Colors.amber,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      "A Graphic Designer",
                      speed: Duration(milliseconds: 50),
                      textStyle: TextStyles(screenWidth: screenWidth).introM2,
                    ),
                    TyperAnimatedText(
                      "An App Developer",
                      speed: Duration(milliseconds: 50),
                      textStyle: TextStyles(screenWidth: screenWidth).introM2,
                    ),
                    TyperAnimatedText(
                      "An UI/UX Enthusiast",
                      speed: Duration(milliseconds: 50),
                      textStyle: TextStyles(screenWidth: screenWidth).introM2,
                    ),
                  ],
                ),
              ),
              // SizedBox(height: screenHeight * 0),
            ],
          ),
        ],
      ),
    );
  }
}
