import 'package:flutter/material.dart';

import '../components.dart';

class ThemesRow extends StatelessWidget {
  const ThemesRow
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AppCards(
          cardTitle: 'NACP',
          cardelevation: 8.0,
        ),
        AppCards(
          cardTitle: 'NMCP',
          cardColor: Colors.blue.withOpacity(0.6),
          cardelevation: 8.0,
        ),
        const AppCards(
          cardTitle: 'PMTCT',
          cardelevation: 8.0,
        ),
        const AppCards(
          cardTitle: 'NTDCP',
          cardelevation: 8.0,
        ),
      ],
    );
  }
}
