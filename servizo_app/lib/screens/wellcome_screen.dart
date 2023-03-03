import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:servizo_app/common/text.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          wellcomeScreen() ,
          enterYourPin() 
        ],
      ),
    );
  }

  Widget wellcomeScreen() => Text(
        "Welcome back!",
        style: TextStyle(fontSize: 34),
      );
  Widget enterYourPin() =>
      TittleText(text: "Enter your pin", color: Colors.black, textSize: 14);
}
