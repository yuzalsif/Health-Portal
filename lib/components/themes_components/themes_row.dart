import 'package:flutter/material.dart';
import 'package:health_potal/models/theme_cards_manager.dart';
import 'package:provider/provider.dart';

import '../components.dart';

class ThemesRow extends StatefulWidget {
  const ThemesRow({Key? key}) : super(key: key);

  @override
  State<ThemesRow> createState() => _ThemesRowState();
}

class _ThemesRowState extends State<ThemesRow> {
  static List<AppCards> allCards = [
    const AppCards(
      cardTitle: 'NACP',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/nacp.jpeg',
      width: 70,
      height: 80,
    ),
    AppCards(
      cardTitle: 'NMCP',
      cardColor: Colors.blue.withOpacity(0.6),
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/NMCP.png',
      width: 70,
      height: 80,
    ),
    const AppCards(
      cardTitle: 'PMTCT',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/pmtct.jpeg',
      width: 70,
      height: 80,
    ),
    const AppCards(
      cardTitle: 'NTDCP',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/ntdcp.jpeg',
      width: 70,
      height: 80,
    ),

    // these are sample cards

    const AppCards(
      cardTitle: 'NACP',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/nacp.jpeg',
      width: 70,
      height: 80,
    ),
    AppCards(
      cardTitle: 'NMCP',
      cardColor: Colors.blue.withOpacity(0.6),
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/NMCP.png',
      width: 70,
      height: 80,
    ),
    const AppCards(
      cardTitle: 'PMTCT',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/pmtct.jpeg',
      width: 70,
      height: 80,
    ),
    const AppCards(
      cardTitle: 'NTDCP',
      cardelevation: 8.0,
      imageUrl: 'assets/cards_images/ntdcp.jpeg',
      width: 70,
      height: 80,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isSeeAllChecked =
        Provider.of<ThemeCardsManager>(context, listen: true).isSeeAllChecked;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount:
          isSeeAllChecked ? allCards.length : (allCards.getRange(0, 4)).length,
      padding: const EdgeInsets.only(bottom: 10),
      itemBuilder: (context, index) {
        final item = allCards[index];
        return AppCards(
          cardTitle: item.cardTitle,
          height: item.height,
          width: item.width,
          cardelevation: item.cardelevation,
          cardColor: item.cardColor,
          imageUrl: item.imageUrl ?? '',
        );
      },
    );
  }
}
