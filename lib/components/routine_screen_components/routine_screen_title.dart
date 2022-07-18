import 'package:flutter/material.dart';

class RoutineTitle extends StatelessWidget {
  const RoutineTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.blue,
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 6,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    InkWell(
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      // iconSize: 32,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Routine Data Statistics',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  // padding: EdgeInsets.all(0),
                  // color: Colors.white,
                  child: const Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                  // iconSize: 32,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'RCH-Antenatal care',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
