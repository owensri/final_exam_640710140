import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('คำนวณค่าจัดส่ง'),
        ),
      ),
    );
  }
}