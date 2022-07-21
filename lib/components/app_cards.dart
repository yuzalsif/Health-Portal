import 'package:flutter/material.dart';

class AppCards extends StatefulWidget {
  final Color cardColor;
  final double cardelevation;
  final String cardTitle;
  final String? imageUrl;
  final double width;
  final double height;

  // final String? imageProvider;

  const AppCards({
    Key? key,
    this.cardColor = Colors.white,
    this.cardelevation = 0.0,
    this.imageUrl,
    required this.cardTitle,
    required this.height,
    required this.width
  }) : super(key: key);

  @override
  State<AppCards> createState() => _AppCardsState();
}

class _AppCardsState extends State<AppCards> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.cardelevation,
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        constraints: BoxConstraints.expand(
          width: widget.width,
          height: widget.height,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: widget.cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Expanded(
                child: Image(
                  image: AssetImage(widget.imageUrl ?? ''),
                  fit: BoxFit.fill,
                ),
              ),
              width: 50,
              height: 35,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              widget.cardTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.blue),
                  textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
