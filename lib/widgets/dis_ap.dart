import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_main/constants/colors.dart';

class DisAp extends StatelessWidget {
  final double screenWidth;
  const DisAp({super.key, required this.screenWidth});

  // final double screenWidth=screenWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: screenWidth * 0.5,
          height: screenWidth * 0.37,
          // color: Colors.amber,
          child: Padding(
            padding: EdgeInsets.only(bottom: screenWidth * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.11,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.headingC.withOpacity(0.4),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.firaCode(
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.012,
                              color: CustomColor.titleC,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenWidth * 0.11,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.headingC.withOpacity(0.4),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "With a solid foundation in robotics and IoT, I bridge both hardware and software domains.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.firaCode(
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.012,
                              color: CustomColor.titleC,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenWidth * 0.11,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.headingC.withOpacity(0.4),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "My creativity and technical skills drive me to keep learning and solving real-world problems innovatively.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.firaCode(
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.012,
                              color: CustomColor.titleC,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenWidth * 0.11,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        color: CustomColor.raisedBg2,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: CustomColor.headingC.withOpacity(0.4),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.firaCode(
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.012,
                              color: CustomColor.titleC,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // child:
          // Center(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: Text(
          //       "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts. I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences. With a solid foundation in robotics and IoT, I bridge both hardware and software domains. My creativity and technical skills drive me to keep learning and solving real-world problems innovatively.",
          //       textAlign: TextAlign.center,
          //       style: GoogleFonts.firaCode(
          //         fontSize: screenWidth * 0.018,
          //         color: CustomColor.hoverColor,
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ],
    );
  }
}
