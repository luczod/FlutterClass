import 'package:flutter/material.dart';

// dart fix --dry-run
// dart fix --apply
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.0,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    // padding: const EdgeInsets.all(20.0),
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellow.withOpacity(0.5),
                  ),
                ],
              ),

              Container(
                width: 100.0,
                // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                // padding: const EdgeInsets.all(20.0),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}