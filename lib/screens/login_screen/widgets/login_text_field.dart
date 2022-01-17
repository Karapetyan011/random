import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random/screens/widgets/custom_text_field.dart';
import 'package:random/utils/d_strings.dart';

class LoginTextField extends StatelessWidget {
  final VoidCallback mOnPressed;
  final TextEditingController? mController;

  const LoginTextField({
    Key? key,
    required this.mOnPressed,
    required this.mController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mKeyboardType: TextInputType.text,
      mOnPressed: mOnPressed,
      mBackgroundColor: Colors.white,
      mMaxLength: 30,
      mController: mController,
      mTextVisible: false,
      mHintText: DStrings.loginHint,
      mSufIconVisible: false,
    );
  }
}
