import 'package:flutter/material.dart';
import 'package:handicraft/src/modules/handicraft/gui/views/home_view.dart';

void main() => runApp(Handicraft());

class Handicraft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handicraft',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0, color: Colors.transparent),
      ),
      home: HomeView(),
    );
  }
}
