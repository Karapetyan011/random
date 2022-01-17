import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final bool mTextVisible;
  final bool mSufIconVisible;
  final int mMaxLength;

  // final ValueChanged mOnChanged;
  final VoidCallback mOnPressed;
  final TextInputType mKeyboardType;

  // final String mTextFontFamily;
  final String mHintText;

  // final String mHintTextFontFamily;
  final Color mBackgroundColor;
  final TextEditingController? mController;

  const CustomTextField(
      {Key? key,
      required this.mTextVisible,
      required this.mMaxLength,
      // required this.mOnChanged,
      required this.mOnPressed,
      required this.mKeyboardType,
      required this.mHintText,
      required this.mBackgroundColor,
      required this.mController, required this.mSufIconVisible,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tmp = MediaQuery.of(context).size.height / 2;

    return TextField(
      obscureText: mTextVisible,
      obscuringCharacter: '*',
      textAlign: TextAlign.left,
      maxLength: mMaxLength,
      // onChanged: mOnChanged,
      controller: mController,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      enableSuggestions: false,
      autocorrect: false,
      cursorColor: Colors.black,
      keyboardType: mKeyboardType,
      // inputFormatters: <TextInputFormatter>[
      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(tmp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(tmp),
        ),
        suffixIcon: Visibility(
          visible: mSufIconVisible,
          child: IconButton(
            icon: Icon(
              mTextVisible ? Icons.visibility_off : Icons.visibility,
            ),
            color: Colors.black,
            onPressed: mOnPressed,
          ),
        ),
        fillColor: mBackgroundColor,
        filled: true,
        hintText: mHintText,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
      ),
    );
  }
}
