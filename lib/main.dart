import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:projecttask/models/restaurant.dart';
import 'package:projecttask/pages/login_pages.dart';
import 'package:projecttask/theme/theme_provider.dart';
import 'package:projecttask/services/auth/login_or_register.dart';

import 'components/scrachcard_provider.dart'; // Ensure correct import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),

        ),
        ChangeNotifierProvider(create: (context ) => ScratchCardProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:projecttask/models/restaurant.dart';
// import 'package:projecttask/pages/login_pages.dart';
// import 'package:projecttask/theme/theme_provider.dart';
// import 'package:projecttask/services/auth/login_or_register.dart';
// import 'components/scrachcard_provider.dart'; // Ensure correct import
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // Initialize Firebase
//   await Firebase.initializeApp();
//
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => ThemeProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => Restaurant(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => ScratchCardProvider(),
//         ),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return GetMaterialApp(
//           home: LoginOrRegister(),
//           theme: themeProvider.themeData,
//           debugShowCheckedModeBanner: false,
//         );
//       },
//     );
//   }
// }
