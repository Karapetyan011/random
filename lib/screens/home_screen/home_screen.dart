import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random/utils/d_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            DStrings.homeScreen,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.purple,
              decoration: TextDecoration.none,
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
                  horizontal: 20,
                  vertical: 5.0,
                ),
                textStyle: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                });
              },
              child: const Text(
                DStrings.homeBtn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
