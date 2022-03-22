import 'package:flutter/material.dart';
import 'package:health_potal/components/components.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'HIGHLIGHTS',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        HorizontalGraphs(),
        SizedBox(
          height: 16,
        ),
        Horizontal1(),
      ],
    );
  }
}
