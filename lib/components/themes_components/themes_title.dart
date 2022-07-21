import 'package:flutter/material.dart';
import 'package:health_potal/screens/screens.dart';

class ThemesTitle extends StatefulWidget {
  const ThemesTitle({Key? key}) : super(key: key);

  @override
  State<ThemesTitle> createState() => _ThemesTitleState();
}

class _ThemesTitleState extends State<ThemesTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'THEMES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          child: const Text(
            'See All',
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>  const AllThemesScreen())));
          },
        ),
      ],
    );
  }
}
