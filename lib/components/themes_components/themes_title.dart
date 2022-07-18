import 'package:flutter/material.dart';

class ThemesTitle extends StatelessWidget {
  const ThemesTitle({Key? key}) : super(key: key);

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
          onPressed: () {},
        ),
      ],
    );
  }
}
