import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget? actionButton;
  const ScreenHeader({
    Key? key,
    required this.title,
    this.subTitle,
    this.actionButton
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 10,
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
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                actionButton ?? Container(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              subTitle ?? '',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
