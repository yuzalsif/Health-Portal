import 'package:flutter/material.dart';
import 'package:health_potal/models/theme_cards_manager.dart';
import 'package:provider/provider.dart';

class ThemesTitle extends StatefulWidget {
  const ThemesTitle({Key? key}) : super(key: key);

  @override
  State<ThemesTitle> createState() => _ThemesTitleState();
}

class _ThemesTitleState extends State<ThemesTitle> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeCardsManager>(builder: (context, manager, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'THEMES',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextButton(
            child: Text(
              manager.isSeeAllChecked ? 'Hide' : 'See All',
            ),
            onPressed: () {
              manager.seeAllToggler();
            },
          ),
        ],
      );
    });
  }
}
