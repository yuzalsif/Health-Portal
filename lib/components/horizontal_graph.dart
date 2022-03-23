import "package:flutter/material.dart";
import 'package:health_potal/components/charts.dart';

// modify this class to display horizontal graphs list view

class HorizontalGraphs extends StatelessWidget {
  final String graphName;

  const HorizontalGraphs({Key? key, required this.graphName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        width: double.infinity,
        height: 200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            graphName,
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: true
                  ? const SimpleBarChart(
                      [],
                      animate: true,
                    )
                  : Container(
                      color: Colors.grey,
                    )),
        ],
      ),
    );
  }
}
