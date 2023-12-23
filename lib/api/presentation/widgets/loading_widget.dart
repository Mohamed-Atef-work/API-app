import 'package:api_project/animation/skelton_widget.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkeltonWidget(width: width * 0.5, height: 18),
        SkeltonWidget(width: double.infinity, height: height * 0.5),
        const SizedBox(height: 5),
        SkeltonWidget(width: width * 0.2, height: 12),
        SkeltonWidget(width: width * 0.7, height: 13),
        SkeltonWidget(width: width * 0.8, height: 13),
        SkeltonWidget(width: width * 0.9, height: 13),
        SkeltonWidget(width: width, height: 13),
        SkeltonWidget(width: width, height: 13),
        SkeltonWidget(width: width * 0.9, height: 13),
        SkeltonWidget(width: width * 0.8, height: 13),
        SkeltonWidget(width: width * 0.9, height: 13),
        SkeltonWidget(width: width, height: 13),
      ],
    );
  }
}
