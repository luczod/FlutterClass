import 'package:bmi_calculator/components/footer_btn.dart';
import 'package:bmi_calculator/components/headers.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants/colours.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String interpretation;

  const ResultPage(
      {super.key, required this.resultText, required this.bmiResult, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerResult,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          FooterButton(
            label: 'RE-CALCULATE',
            func: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
