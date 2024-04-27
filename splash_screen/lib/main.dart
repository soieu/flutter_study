import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());// SplashScreen을 위젯의 첫 화면으로 지정
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // 위젯의 UI 구현
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset(
                    'assets/maru.jpg',
                      width: 200,
                  ),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Colors.white
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}