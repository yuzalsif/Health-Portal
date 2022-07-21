import 'package:flutter/material.dart';
import 'package:health_potal/components/all_screens_layout/screens_body.dart';
import 'package:health_potal/components/all_screens_layout/screens_header.dart';
import 'package:health_potal/components/components.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenHeader(
              title: 'Routine Data Statistics',
              subTitle: 'RCH-Antenatal care',
              actionButton: InkWell(
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ScreenBody(child: routineBodyContent()),
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }

  Widget routineBodyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 16,
          children: [
            Chip(
              label: const Text(
                'Training land',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.blue.withOpacity(0.4),
              elevation: 8.0,
              onDeleted: () {},
              deleteIcon: const Icon(
                Icons.close,
                size: 18,
              ),
              padding: const EdgeInsets.all(12),
            ),
            Chip(
              label: const Text(
                'Last Year',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.blue.withOpacity(0.4),
              elevation: 8.0,
              onDeleted: () {},
              deleteIcon: const Icon(
                Icons.close,
                size: 18,
              ),
              padding: const EdgeInsets.all(12),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: HorizontalGraphs(
              graphName: 'OPD VISIT',
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: HorizontalGraphs(
              graphName: 'SECOND VISIT',
            ),
          ),
        ),
      ],
    );
  }
}
