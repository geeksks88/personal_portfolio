// import 'package:flutter/material.dart';
// // import 'package:my_portfolio_main/constants/colors.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:line_icons/line_icon.dart';
// // import 'package:icon_icons/icon_icons.dart';
// // import 'package:flutter_social_button/flutter_social_button.dart';
// // import 'package:my_portfolio_main/constants/colors.dart';
// import 'package:my_portfolio_main/widgets/hanging_handles.dart';
// // import 'package:my_portfolio_main/styles/text_styles.dart';
// import 'package:my_portfolio_main/widgets/header_desktop.dart';
// import 'package:my_portfolio_main/widgets/header_mobile.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/bgm.jpg"),
//               fit: BoxFit.cover,
//               opacity: 0.4,
//             ),
//             // gradient: LinearGradient(
//             //   colors: [Colors.black, Color(0xFF111111), Color(0xFF1A1A1A)],
//             //   begin: Alignment.topCenter,
//             //   end: Alignment.bottomCenter,
//             color: Colors.black, // ),
//           ),

//           child: Scaffold(
//             backgroundColor: Colors.transparent,
//             endDrawer:
//                 screenWidth > 600
//                     ? null
//                     : Drawer(
//                       backgroundColor: Colors.black38,
//                       child: ListView(
//                         padding: EdgeInsets.zero,
//                         children: [
//                           ListTile(title: Text('Home')),
//                           // Add more items
//                         ],
//                       ),
//                     ),

//             body: SizedBox(
//               height: screenHeight,
//               width: screenWidth,
//               child: Stack(
//                 children: [
//                   if (screenWidth >= 600) HangingHandles(),
//                   screenWidth >= 600
//                       ? HeaderDesktop(
//                         onNavigationTap: (int navigationIndex) {
//                           //func call to handle nav.
//                         },
//                       )
//                       : const HeaderMobile(),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:my_portfolio_main/widgets/hanging_handles.dart';
import 'package:my_portfolio_main/widgets/header_desktop.dart';
import 'package:my_portfolio_main/widgets/header_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgm.jpg"),
              fit: BoxFit.cover,
              opacity: 0.4,
            ),
            color: Colors.black,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            endDrawer: screenWidth > 600
                ? null
                : Drawer(
                    backgroundColor: Colors.black38,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        ListTile(title: Text('Home')),
                        // Add more items
                      ],
                    ),
                  ),
            body: SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: Stack(
                children: [
                  if (screenWidth >= 600) const HangingHandles(),
                  screenWidth >= 600
                      ? HeaderDesktop(
                          onNavigationTap: (int navigationIndex) {
                            // your existing navigation logic
                          },
                        )
                      : const HeaderMobile(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

