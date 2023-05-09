import 'package:bmi_calculator/Components/bottomButton.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/content_tile.dart';
import 'package:flutter/material.dart';

class resultsPage extends StatelessWidget {
  const resultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CALCULADORA IMC"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "Seu resultado",
                  style: boldTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: contentTile(
                activeContentTileColor,
                widgetChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "data",
                      style: resultTextStyle,
                    ),
                    Text(
                      "22.0",
                      style: resultBMITextStyle,
                    ),
                    Text(
                      "jsdaklfjasdklfjdaskl",
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            bottomButton(
              widgetText: "Re-Calcular",
              onTap: () => () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
