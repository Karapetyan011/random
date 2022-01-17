import 'package:flutter/material.dart';
import 'package:random/screens/home_screen/home_screen.dart';
import 'package:random/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController? passController;
    TextEditingController? loginController;
    return Scaffold(
      body: LoginScreen(
        passController: passController,
        loginController: loginController,
        mOnPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          });
        },
        mOnChanged: (value) {
          setState(() {
            isChecked = !isChecked;
          });
        },
        mValue: isChecked,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'FAB',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
