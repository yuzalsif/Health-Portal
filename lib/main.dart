import "package:flutter/material.dart";
import 'package:health_potal/models/theme_cards_manager.dart';
import 'package:provider/provider.dart';
import './home.dart';

void main() => runApp(const HealthPotal());

class HealthPotal extends StatelessWidget {
  const HealthPotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeCardsManager>(
            create: (context) => ThemeCardsManager())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        title: 'HealthPotal',
        home: const Home(),
      ),
    );
  }
}
