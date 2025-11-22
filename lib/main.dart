// // import 'package:flutter/material.dart';
// // import 'package:my_portfolio_main/screens/home_page.dart';

// // void main() {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       // theme: ThemeData.dark(),
// //       title: 'Sujal Singh />',
// //       home: HomePage(),
// //     );
// //   }
// // }


// // lib/main.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'app_state.dart';
// import 'screens/home_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final appState = await AppState.load();
//   runApp(
//     ChangeNotifierProvider<AppState>.value(
//       value: appState,
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sujal Singh />',
//       home: const HomePage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_portfolio_main/screens/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sujal Singh />',
      home: const HomePage(),
    );
  }
}
