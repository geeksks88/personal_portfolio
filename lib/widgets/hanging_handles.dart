import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:my_portfolio_main/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class HangingHandles extends StatelessWidget {
  const HangingHandles({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Positioned(
      left: screenWidth * 0.01,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 110, width: 2, color: CustomColor.lineColor),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              launchWebsite('https://github.com/geeksks88');
            },
            child: LineIcon.github(
              color: CustomColor.lineColor,
              size: screenHeight * 0.04,
            ),
          ),
          SizedBox(height: 2),
          InkWell(
            onTap: () {
              launchWebsite('https://www.linkedin.com/in/sujalsingh0088');
            },
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: LineIcon.linkedin(
              color: CustomColor.lineColor,
              size: screenHeight * 0.04,
            ),
          ),
          SizedBox(height: 2),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              launchWebsite(
                'https://www.instagram.com/sujal_singh_0088?igsh=a3VxOWZ5ZjF1dW5v',
              );
            },
            child: LineIcon.instagram(
              color: CustomColor.lineColor,
              size: screenHeight * 0.04,
            ),
          ),
        ],
      ),
    );
  }

  void launchWebsite(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'could not launch $url';
    }
  }
}
