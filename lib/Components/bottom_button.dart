import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButton extends StatelessWidget {
  final String widgetText;
  final Function onTap;

  const bottomButton({
    super.key,
    required this.widgetText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 70.0,
        width: double.infinity,
        child: Center(
          child: Text(widgetText, style: boldTextStyle),
        ),
      ),
    );
  }
}
