import 'package:flutter/material.dart';
import 'api/presentation/view.dart';

// New commit

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NasaScreen(),
    );
  }

}
