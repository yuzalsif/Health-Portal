import 'package:flutter/widgets.dart';
import 'package:health_potal/components/components.dart';
import 'package:health_potal/models/theme_cards_list.dart';

class ThemesRow extends StatelessWidget {
  const ThemesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppCards> themes = ThemeCards.allCards.sublist(0, 4);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: themes,
    );
  }
}
