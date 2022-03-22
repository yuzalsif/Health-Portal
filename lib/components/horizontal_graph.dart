import "package:flutter/material.dart";

// modify this class to display horizontal graphs list view

class HorizontalGraphs extends StatelessWidget {
  const HorizontalGraphs({Key? key}) : super(key: key);

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
          const Text(
            'OPD VISITS',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: Container(
            color: Colors.grey,
          )),
        ],
      ),
    );
  }
}
