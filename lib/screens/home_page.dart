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



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_main/widgets/hanging_handles.dart';
import 'package:my_portfolio_main/widgets/header_desktop.dart';
import 'package:my_portfolio_main/widgets/header_mobile.dart';

// Only used on web to force browser scroll to top on reload
// Import guarded by kIsWeb to avoid errors on non-web platforms.
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // After first frame is rendered, force the browser to scroll to top.
    // This ensures on page reload the view starts at the top/home section.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (kIsWeb) {
        try {
          // Scroll the browser window to top (works for Flutter web single-page).
          html.window.scrollTo(0, 0);
        } catch (e) {
          // ignore any web-only errors silently
          if (kDebugMode) print('scrollTo top error: $e');
        }
      } else {
        // On non-web platforms nothing to do: keep native behavior unchanged.
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/bgm.jpg"),
              fit: BoxFit.cover,
              opacity: 0.4,
            ),
            color: Colors.black,
          ),

          child: Scaffold(
            backgroundColor: Colors.transparent,
            endDrawer:
                screenWidth > 600
                    ? null
                    : Drawer(
                      backgroundColor: Colors.black38,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          ListTile(title: Text('Home', style: TextStyle(color: Colors.white))),
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
                          // keep your existing nav handler here (unchanged)
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
