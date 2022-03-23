import 'package:flutter/material.dart';
import 'package:health_potal/components/components.dart';

class SurveyBody extends StatelessWidget {
  const SurveyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 24,
        left: 16,
        right: 16,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: const SurveyBodyContent(),
    );
  }
}
