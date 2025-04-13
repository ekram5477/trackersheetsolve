import 'package:flutter/material.dart';
// Problem 02 Soleved
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonTextChanger(),
    );
  }
}

class ButtonTextChanger extends StatefulWidget {
  const ButtonTextChanger({super.key});
  @override
  _ButtonTextChangerState createState() => _ButtonTextChangerState();
}

class _ButtonTextChangerState extends State<ButtonTextChanger> {
  String _displayText = "Press the button";

  void _changeText() {
    setState(() {
      _displayText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_displayText, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _changeText, child: Text("Press Me")),
          ],
        ),
      ),
    );
  }
}