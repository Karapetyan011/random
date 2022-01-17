import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random/screens/login_screen/widgets/login_check_box.dart';
import 'package:random/utils/d_strings.dart';

import 'widgets/login_text_field.dart';
import 'widgets/password_text_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController? passController;
  final TextEditingController? loginController;
  final VoidCallback mOnPressed;
  final ValueChanged mOnChanged;
  final bool mValue;

  const LoginScreen({
    Key? key,
    this.passController,
    this.loginController,
    required this.mOnPressed,
    required this.mOnChanged,
    required this.mValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginTextField(
              mOnPressed: () {},
              mController: loginController,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: PasswordTextField(
                mTextVisible: true,
                mOnPressed: () {},
                mController: passController,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
              child: LoginCheckBox(
                mValue: mValue,
                mOnChanged: mOnChanged,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: mOnPressed,
                child: const Text(
                  DStrings.loginBtn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
