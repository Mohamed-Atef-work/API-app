import 'package:flutter/material.dart';

class SkeltonWidget extends StatelessWidget {
  final double width;
  final double height;

  const SkeltonWidget({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        width: width,
        height: height,
      ),
    );
  }
}
