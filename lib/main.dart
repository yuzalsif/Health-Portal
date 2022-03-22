import "package:flutter/material.dart";
import './home.dart';

void main() => runApp(const HealthPotal());


class HealthPotal extends StatelessWidget {
  const HealthPotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'HealthPotal',
      home: const Home(),
    );
  }
}