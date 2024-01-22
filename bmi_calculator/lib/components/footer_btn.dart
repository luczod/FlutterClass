import 'package:bmi_calculator/constants/colours.dart';
import 'package:bmi_calculator/constants/spacing.dart';
import 'package:bmi_calculator/constants/typography.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final VoidCallback func;
  final String label;

  const FooterButton({super.key, required this.label, required this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        color: kSecondaryColor,
        margin: const EdgeInsets.only(top: 10),
        height: kBottomDivHeight,
        // full-screen
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: kLargeBtnTextStyle,
          ),
        ),
      ),
    );
  }
}
