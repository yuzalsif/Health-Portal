import 'package:flutter/material.dart';
import 'package:health_potal/screens/screens.dart';
import 'components.dart';

class Horizontal1 extends StatelessWidget {
  const Horizontal1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const RoutineScreen();
              }),
            );
          },
          child: HorizontalCard(
            cardTitle: 'Routine',
            cardColor: Colors.blue.withOpacity(0.4),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const SurveyScreen();
              }),
            );
          },
          child: HorizontalCard(
            cardTitle: 'Survey',
            cardColor: Colors.blue.withOpacity(0.4),
          ),
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
