import 'package:api_project/api/conroller.dart';
import 'package:api_project/api/model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NasaScreen extends StatelessWidget {
  NasaScreen({Key? key}) : super(key: key);

  final controller = ApiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Nasa Api",
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          //color: Colors.deepPurple,
        ),
      ),
      body: FutureBuilder(
        future: controller.getRandomAya(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.data == null)
          {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else
          {
            var model = snapshot.data as AutoGenerate;

            return Center(
              child: Text(model.verse.textMadani),
            );
          }
        },
      ),
    );
  }
}
