import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  static const title = 'Official dissemination point of health information in the Ministry of Health, '
      'Community, Development, Gender, Elderly and Children (MoHCDGEC)';

  @override
  Widget build(BuildContext context) {
    return Container(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  // padding: EdgeInsets.all(0),
                  // color: Colors.white,
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  // iconSize: 32,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'National Health Portal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 13,
                ),
                maxLines: 3,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'READ MORE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
