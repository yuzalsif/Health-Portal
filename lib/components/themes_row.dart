import 'package:flutter/material.dart';

import 'components.dart';

class Horizontal2 extends StatelessWidget {
  const Horizontal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const HorizontalCard(
          cardTitle: 'NACP',
          cardelevation: 8.0,
        ),
        HorizontalCard(
          cardTitle: 'NMCP',
          cardColor: Colors.blue.withOpacity(0.6),
          cardelevation: 8.0,
        ),
        const HorizontalCard(
          cardTitle: 'PMTCT',
          cardelevation: 8.0,
        ),
        const HorizontalCard(
          cardTitle: 'NTDCP',
          cardelevation: 8.0,
        ),
      ],
    );
  }
}
