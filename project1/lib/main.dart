import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
          ),
          child: Text('텍스트 버튼')
      ),
        ),
      ),
    );
  }
}

