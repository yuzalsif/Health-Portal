import 'package:flutter/material.dart';
import 'package:health_potal/screens/screens.dart';
import 'components.dart';

class RowBeforeTheme extends StatelessWidget {
  const RowBeforeTheme({Key? key}) : super(key: key);

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
          child: AppCards(
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
          child: AppCards(
            cardTitle: 'Survey',
            cardColor: Colors.blue.withOpacity(0.4),
          ),
        ),
        AppCards(
          cardTitle: 'Library',
          cardColor: Colors.blue.withOpacity(0.4),
        ),
        AppCards(
          cardTitle: 'Updates',
          cardColor: Colors.blue.withOpacity(0.4),
        ),
      ],
    );
  }
}
