import 'package:flutter/material.dart';
import 'package:random/screens/widgets/custom_check_box.dart';

class LoginCheckBox extends StatelessWidget {
  final bool mValue;
  final ValueChanged mOnChanged;

  const LoginCheckBox({
    required this.mValue,
    required this.mOnChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      mCheckBoxText: 'check_box',
      mValue: mValue,
      mColor: Colors.white,
      mOnChanged: mOnChanged,
    );
  }
}
