import 'package:flutter/material.dart';
import 'components.dart';


class Horizontal1 extends StatelessWidget {
  const Horizontal1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HorizontalCard(
              cardTitle: 'Routine',
              cardColor: Colors.blue.withOpacity(0.4),
            ),
            HorizontalCard(
              cardTitle: 'Survey',
              cardColor: Colors.blue.withOpacity(0.4),
            ),
            HorizontalCard(
              cardTitle: 'Library',
              cardColor: Colors.blue.withOpacity(0.4),
            ),
            HorizontalCard(
              cardTitle: 'Updates',
              cardColor: Colors.blue.withOpacity(0.4),
            ),
          ],
        );
  }
}