import 'package:flutter/material.dart';
import 'package:health_potal/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2a8ed1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HomeAppBar(),
          Expanded(
            child: HomeSreenBody(),
          ),
        ],
      ),
    );
  }
}
