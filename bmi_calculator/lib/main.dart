import 'package:bmi_calculator/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
    );
  }
}

// class RoutesApp extends StatelessWidget {
//   const RoutesApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const BMICalculator(),
//         '/calc': (context) => const ResultPage(),
//       },
//     );
//   }
// }

/*theme: ThemeData(
  textTheme: const TextTheme(
  bodyMedium: TextStyle(color: Colors.white),
 ),
  scaffoldBackgroundColor: const Color(0xFF0A0E21),
  appBarTheme: const AppBarTheme(
  backgroundColor: Color(0xFF0A0E21),
 ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
  backgroundColor: Colors.purple,
 ),
),*/
