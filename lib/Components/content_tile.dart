import 'package:flutter/material.dart';

Function checkSafety = () {
  return null;
};

class contentTile extends StatelessWidget {
  contentTile(this.widgetColor, {super.key, this.widgetChild, this.onPress});
  final Color widgetColor;
  Widget? widgetChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? checkSafety(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widgetColor,
        ),
        margin: EdgeInsets.all(15.0),
        child: widgetChild,
      ),
    );
  }
}
