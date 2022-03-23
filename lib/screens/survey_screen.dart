import 'package:flutter/material.dart';
import 'package:health_potal/components/components.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SurveyTitle(),
            Expanded(
              child: SurveyBody(),
            ),
          ],
        ),
      ),
    );
  }
}
