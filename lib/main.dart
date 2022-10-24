import 'package:atb_plugin/ui/screens/about.dart';
import 'package:atb_plugin/ui/screens/profile.dart';
import 'package:atb_plugin/ui/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: const About(),
    );
  }
}