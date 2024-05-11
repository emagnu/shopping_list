//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'widgets/grocery_list.dart';
//  //   ///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
        ).copyWith(
          surface: const Color.fromARGB(255, 42, 51, 59),
          onSurface: const Color.fromARGB(255, 147, 229, 250),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
        useMaterial3: true,
      ),
      home: const GroceryList(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Groceries',
//       theme: ThemeData.dark().copyWith(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromARGB(255, 147, 229, 250),
//           brightness: Brightness.dark,
//           surface: const Color.fromARGB(255, 42, 51, 59),
//         ),
//         scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
//       ),
//       home: ...,
//     );
//   }
// }