import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random/screens/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  final bool mTextVisible;

  // final ValueChanged mOnChanged;
  final Function mOnPressed;
  final TextEditingController? mController;

  const PasswordTextField(
      {Key? key,
      required this.mTextVisible,
      // required this.mOnChanged,
      required this.mOnPressed,
      required this.mController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mController: mController,
      mBackgroundColor: Colors.white,
      mTextVisible: mTextVisible,
      mHintText: "Input Password",
      mKeyboardType: TextInputType.text,
      mOnPressed: () {},
      // mOnChanged: mOnChanged,
      mMaxLength: 100,
      mSufIconVisible: true,
    );
  }
}
