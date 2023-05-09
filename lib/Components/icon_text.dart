import 'package:flutter/material.dart';
import 'constants.dart';

class iconText extends StatelessWidget {
  final IconData widgetIcon;
  final String widgetText;
  const iconText(
      {super.key, required this.widgetIcon, required this.widgetText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widgetIcon,
          size: 80.0,
          color: widgetIconColor,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          widgetText,
          style: widgetTextStyle,
        )
      ],
    );
  }
}
