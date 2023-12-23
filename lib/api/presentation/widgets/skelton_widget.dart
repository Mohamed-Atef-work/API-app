import 'package:flutter/material.dart';

class SkeltonWidget extends StatelessWidget {
  final double width;
  final double height;

  const SkeltonWidget({super.key, required this.width, required this.height});

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
