import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.ontap});
  final IconData? icon;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:ontap,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF535362),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}