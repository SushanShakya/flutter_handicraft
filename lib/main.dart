import 'package:flutter/material.dart';

void main() => runApp(Handicraft());

class Handicraft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handicraft',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      home: const Scaffold(),
    );
  }
}
