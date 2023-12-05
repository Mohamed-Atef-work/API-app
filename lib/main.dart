import 'package:api_project/api/conroller.dart';
import 'package:api_project/api/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  ApiController c = ApiController();
   c.getData();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NasaScreen(),
    );
  }

}
