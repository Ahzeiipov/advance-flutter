import 'package:flutter/material.dart';
import '../../../theme/theme.dart';

class BlaButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final IconData? icon;
  const BlaButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.isPrimary = true,
      this.icon});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isPrimary ? BlaColors.primary : BlaColors.white;
    BorderSide border = isPrimary
        ? BorderSide.none
        : BorderSide(color: BlaColors.greyLight, width: 2);
    Color iconColor = isPrimary ? BlaColors.white : BlaColors.primary;
    Color textColor = isPrimary ? BlaColors.white : BlaColors.primary;
    return SizedBox(
        child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        side: border,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor),
          Text(text, style: TextStyle(color: textColor)),
        ],
      ),
    ));
  }
}
