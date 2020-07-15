import 'package:bmi/pages/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFFFFFFFF),),
        ),
        accentColor: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI Calculator'),
          ),
        ),
        body: InputPage(),
      ),
    );
  }
}