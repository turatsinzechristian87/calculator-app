import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "0";

  Widget buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              displayText = buttonText;
            });
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            backgroundColor: const Color.fromARGB(255, 6, 0, 16),
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }

  Widget buildButtonRow(String buttonText1, String buttonText2, String buttonText3, String buttonText4) {
    return Expanded(
      child: Row(
        children: [
          buildButton(buttonText1),
          buildButton(buttonText2),
          buildButton(buttonText3),
          buildButton(buttonText4),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        backgroundColor: Color.fromARGB(255, 244, 90, 7),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                displayText,
                style: TextStyle(backgroundColor : Colors.white   ,fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                buildButtonRow("7", "8", "9", "/"),
                buildButtonRow("4", "5", "6", "*"),
                buildButtonRow("1", "2", "3", "-"),
                buildButtonRow(".", "0", "00", "+"),
                buildButtonRow("C", "=", "", ""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
