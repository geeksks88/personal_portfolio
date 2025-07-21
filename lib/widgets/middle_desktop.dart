import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';

class MiddleDesktop extends StatelessWidget {
  const MiddleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            spacing: 0,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hii,",
                style: TextStyles(screenWidth: screenWidth * 1.2).introS,
              ),
              Text(
                "I'm Sujal",
                style: TextStyles(screenWidth: screenWidth * 1.5).introS,
              ),
              Row(
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        "A Graphics Designer",
                        speed: Duration(milliseconds: 50),
                        textStyle:
                            TextStyles(screenWidth: screenWidth * 1.15).introS2,
                      ),
                      TyperAnimatedText(
                        "An App Developer",
                        speed: Duration(milliseconds: 50),
                        textStyle:
                            TextStyles(screenWidth: screenWidth * 1.15).introS2,
                      ),
                      TyperAnimatedText(
                        "An UI/UX Enthusiast",
                        speed: Duration(milliseconds: 50),
                        textStyle:
                            TextStyles(screenWidth: screenWidth * 1.15).introS2,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.05),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height:
                    screenWidth >= 920
                        ? screenHeight * 0.6
                        : screenHeight * 0.35,
                width:
                    screenWidth >= 920
                        ? screenHeight * 0.6
                        : screenHeight * 0.35,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(width: 4, color: CustomColor.hassC),
                  // color: CustomColor.hassC,
                ),
                child: CircleAvatar(
                  // radius: screenWidth * 0.0001,
                  // radius: 46,
                  backgroundColor: Colors.black.withOpacity(0.35),
                  backgroundImage: AssetImage("assets/sdp.png"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
