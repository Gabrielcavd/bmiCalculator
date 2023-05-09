import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/icon_text.dart';
import 'package:bmi_calculator/Components/roundIconButton.dart';
import 'package:bmi_calculator/Pages/results_page.dart';
import 'package:flutter/material.dart';
import '../Components/bottomButton.dart';
import '../Components/content_tile.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  double altura = 1.6;
  int peso = 50;
  int idade = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA IMC"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: contentTile(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    selectedGender == Gender.female
                        ? activeContentTileColor
                        : inactiveContentTileColor,
                    widgetChild: const iconText(
                        widgetIcon: Icons.female, widgetText: "Mulher"),
                  ),
                ),
                Expanded(
                  child: contentTile(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    selectedGender == Gender.male
                        ? activeContentTileColor
                        : inactiveContentTileColor,
                    widgetChild: const iconText(
                      widgetIcon: Icons.male,
                      widgetText: "Homem",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: contentTile(
              activeContentTileColor,
              widgetChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Altura",
                    style: widgetTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toStringAsFixed(2),
                        style: numberTextStyle,
                      ),
                      const Text(
                        "m",
                        style: widgetTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color.fromARGB(48, 142, 10, 93),
                      thumbColor: Colors.pink,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                    ),
                    child: Slider(
                      min: 1.2,
                      max: 2.8,
                      value: altura,
                      onChanged: (newAltura) {
                        setState(() {
                          altura = newAltura;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: contentTile(
                    activeContentTileColor,
                    widgetChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Peso",
                          style: widgetTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundIconButton(
                              onPressed: () => () {
                                setState(() {
                                  peso++;
                                });
                              },
                              widgetIcon: Icons.add,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            roundIconButton(
                              onPressed: () => () {
                                setState(() {
                                  peso--;
                                });
                              },
                              widgetIcon: Icons.remove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: contentTile(
                    activeContentTileColor,
                    widgetChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Idade",
                          style: widgetTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundIconButton(
                              onPressed: () => () {
                                setState(() {
                                  idade++;
                                });
                              },
                              widgetIcon: Icons.add,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            roundIconButton(
                              onPressed: () => () {
                                setState(() {
                                  idade--;
                                });
                              },
                              widgetIcon: Icons.remove,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
            widgetText: "Calcular",
            onTap: () => () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return resultsPage();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
