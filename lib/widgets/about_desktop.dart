import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio_main/constants/colors.dart';
import 'package:my_portfolio_main/styles/text_styles.dart';
import 'package:my_portfolio_main/widgets/dis_AP.dart';

class AboutDesktop extends StatelessWidget {
  final double screenWidth;
  const AboutDesktop({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SizedBox(height: 50),
        Container(
          // color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  "#",
                  style: TextStyles(screenWidth: screenWidth * 2).hassS,
                ),
                SizedBox(width: 2),
                Text(
                  "about-me",
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
        ),
        // SizedBox(height: screenWidth * 0.001),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            // textBaseline: TextBaseline.ideographic,
            mainAxisAlignment: MainAxisAlignment.start,

            // crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Column(
                children: [
                  DisAp(screenWidth: screenWidth),
                  // Container(
                  //   width: screenWidth * 0.5,
                  //   height: screenWidth * 0.36,
                  //   // color: Colors.black,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Container(
                  //             height: screenWidth * 0.11,
                  //             width: screenWidth * 0.24,
                  //             decoration: BoxDecoration(
                  //               color: CustomColor.raisedBg,
                  //               borderRadius: BorderRadius.circular(5),
                  //               border: Border.all(
                  //                 width: 1,
                  //                 color: CustomColor.headingC.withOpacity(0.4),
                  //               ),
                  //             ),
                  //             child: Center(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(
                  //                   left: 10,
                  //                   right: 10,
                  //                 ),
                  //                 child: Text(
                  //                   "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts.",
                  //                   textAlign: TextAlign.center,
                  //                   style: GoogleFonts.firaCode(
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: screenWidth * 0.012,
                  //                     color: CustomColor.titleC,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Container(
                  //             height: screenWidth * 0.11,
                  //             width: screenWidth * 0.24,
                  //             decoration: BoxDecoration(
                  //               color: CustomColor.raisedBg,
                  //               borderRadius: BorderRadius.circular(5),
                  //               border: Border.all(
                  //                 width: 1,
                  //                 color: CustomColor.headingC.withOpacity(0.4),
                  //               ),
                  //             ),
                  //             child: Center(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(
                  //                   left: 10,
                  //                   right: 10,
                  //                 ),
                  //                 child: Text(
                  //                   "With a solid foundation in robotics and IoT, I bridge both hardware and software domains.",
                  //                   textAlign: TextAlign.center,
                  //                   style: GoogleFonts.firaCode(
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: screenWidth * 0.012,
                  //                     color: CustomColor.titleC,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),

                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Container(
                  //             height: screenWidth * 0.11,
                  //             width: screenWidth * 0.24,
                  //             decoration: BoxDecoration(
                  //               color: CustomColor.raisedBg,
                  //               borderRadius: BorderRadius.circular(5),
                  //               border: Border.all(
                  //                 width: 1,
                  //                 color: CustomColor.headingC.withOpacity(0.4),
                  //               ),
                  //             ),
                  //             child: Center(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(
                  //                   left: 10,
                  //                   right: 10,
                  //                 ),
                  //                 child: Text(
                  //                   "My creativity and technical skills drive me to keep learning and solving real-world problems innovatively.",
                  //                   textAlign: TextAlign.center,
                  //                   style: GoogleFonts.firaCode(
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: screenWidth * 0.012,
                  //                     color: CustomColor.titleC,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Container(
                  //             height: screenWidth * 0.11,
                  //             width: screenWidth * 0.24,
                  //             decoration: BoxDecoration(
                  //               color: CustomColor.raisedBg,
                  //               borderRadius: BorderRadius.circular(5),
                  //               border: Border.all(
                  //                 width: 1,
                  //                 color: CustomColor.headingC.withOpacity(0.4),
                  //               ),
                  //             ),
                  //             child: Center(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(
                  //                   left: 10,
                  //                   right: 10,
                  //                 ),
                  //                 child: Text(
                  //                   "I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences.",
                  //                   textAlign: TextAlign.center,
                  //                   style: GoogleFonts.firaCode(
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: screenWidth * 0.012,
                  //                     color: CustomColor.titleC,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),

                  //   // child:
                  //   // Center(
                  //   //   child: Padding(
                  //   //     padding: const EdgeInsets.all(20.0),
                  //   //     child: Text(
                  //   //       "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts. I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences. With a solid foundation in robotics and IoT, I bridge both hardware and software domains. My creativity and technical skills drive me to keep learning and solving real-world problems innovatively.",
                  //   //       textAlign: TextAlign.center,
                  //   //       style: GoogleFonts.firaCode(
                  //   //         fontSize: screenWidth * 0.018,
                  //   //         color: CustomColor.hoverColor,
                  //   //       ),
                  //   //     ),
                  //   //   ),
                  //   // ),
                  // ),
                ],
              ),
              Expanded(
                child: Image.asset(
                  "assets/esc.png",
                  height: screenWidth * 0.35,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// class AboutDesktop extends StatefulWidget {
//   final double screenWidth;
//   const AboutDesktop({super.key, required this.screenWidth});

//   @override
//   State<AboutDesktop> createState() => _AboutDesktopState();
// }

// class _AboutDesktopState extends State<AboutDesktop> {
//   bool _showAbout = false;

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = widget.screenWidth;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 20.0),
//           child: Row(
//             textBaseline: TextBaseline.alphabetic,
//             crossAxisAlignment: CrossAxisAlignment.baseline,
//             children: [
//               Text("#", style: TextStyles(screenWidth: screenWidth * 2).hassS),
//               SizedBox(width: 2),
//               Text("about-me", style: TextStyles(screenWidth: screenWidth * 0.7).headD),
//               SizedBox(width: 2),
//               Text(" -------------/", style: TextStyles(screenWidth: screenWidth * 0.7).headD),
//             ],
//           ),
//         ),

//         SizedBox(height: 20),

//         Center(
//           child: ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _showAbout = !_showAbout;
//               });
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: CustomColor.raisedBg,
//               foregroundColor: CustomColor.titleC,
//               padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//             ),
//             child: Text(_showAbout ? "Hide Details" : "Tap to Reveal"),
//           ),
//         ),

//         SizedBox(height: 20),

//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   AnimatedOpacity(
//                     duration: Duration(milliseconds: 500),
//                     opacity: _showAbout ? 1.0 : 0.0,
//                     child: IgnorePointer(
//                       ignoring: !_showAbout,
//                       child: Container(
//                         width: screenWidth * 0.5,
//                         height: screenWidth * 0.36,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             _infoRow(
//                               screenWidth,
//                               "I'm an ECE undergraduate from INDIA, passionate about both technology and the arts.",
//                               "With a solid foundation in robotics and IoT, I bridge both hardware and software domains.",
//                             ),
//                             _infoRow(
//                               screenWidth,
//                               "My creativity and technical skills drive me to keep learning and solving real-world problems innovatively.",
//                               "I specialize in mobile app development using Flutter and graphic designing, creating functional and visually appealing user experiences.",
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Image.asset("assets/esc.png", height: screenWidth * 0.35),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _infoRow(double screenWidth, String leftText, String rightText) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _infoBox(screenWidth, leftText),
//         _infoBox(screenWidth, rightText),
//       ],
//     );
//   }

//   Widget _infoBox(double screenWidth, String text) {
//     return Container(
//       height: screenWidth * 0.11,
//       width: screenWidth * 0.24,
//       decoration: BoxDecoration(
//         color: CustomColor.raisedBg,
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(
//           width: 1,
//           color: CustomColor.headingC.withOpacity(0.4),
//         ),
//       ),
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Text(
//             text,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.firaCode(
//               fontWeight: FontWeight.w600,
//               fontSize: screenWidth * 0.012,
//               color: CustomColor.titleC,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
