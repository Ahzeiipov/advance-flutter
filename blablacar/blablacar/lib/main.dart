import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import './widgets/actions/BlaButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      // home: Scaffold(body: RidePrefScreen()),
      home: Scaffold(
          body: BlaButton(
        text: 'Hello',
      )),
    );
  }
}
// update
