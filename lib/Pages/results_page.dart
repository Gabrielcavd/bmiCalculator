import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/content_tile.dart';
import 'package:flutter/material.dart';

class resultsPage extends StatelessWidget {
  const resultsPage(
      {super.key,
      required this.imagem,
      required this.resultado,
      required this.bmi});
  final Image imagem;
  final String resultado;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULADORA IMC"),
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
                "Resultado",
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
                children: [
                  Text(
                    resultado,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: resultBMITextStyle,
                  ),
                  imagem
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
      ),
    );
  }
}
