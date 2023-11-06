import 'package:flutter/material.dart';

class roundIconButton extends StatelessWidget {
  const roundIconButton(
      {super.key, required this.widgetIcon, required this.onPressed});
  final IconData widgetIcon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(widgetIcon),
    );
  }
}
