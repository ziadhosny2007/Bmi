import 'package:bmi/start_bmi.dart';
import 'package:bmi/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void change(bool v) {
    setState(() {
      isSel = v;
    });
  }

  bool isSel = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: (isSel) ? ThemeMode.dark : ThemeMode.light,
      home: StartBmi(change: change, isSel: isSel),
    );
  }
}
