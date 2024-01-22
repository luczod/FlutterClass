import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback func;

  const RoundIconButton({super.key, required this.icon, required this.func});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 6.0,
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        fillColor: const Color(0XFF4C4F5E),
        onPressed: func,
        child: Icon(icon));
  }
}
