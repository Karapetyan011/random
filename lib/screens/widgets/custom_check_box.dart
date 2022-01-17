import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final String mCheckBoxText;
  final bool mValue;
  final ValueChanged mOnChanged;
  final Color mColor;

  const CustomCheckBox({
    required this.mCheckBoxText,
    required this.mValue,
    required this.mOnChanged,
    this.mColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: mColor,
      activeColor: Colors.purple,
      onChanged: mOnChanged,
      value: mValue,
    );
  }
}
