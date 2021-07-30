import 'package:bmi_task/bmi_screen.dart';
import 'package:bmi_task/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<BmiProvider>(
      create: (BuildContext context) => BmiProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiApp(),
    );
  }
}


