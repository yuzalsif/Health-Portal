import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  final Color cardColor;
  final double cardelevation;
  final String cardTitle;
  // final String? imageProvider;

  const HorizontalCard({
    Key? key,
    this.cardColor = Colors.white,
    this.cardelevation = 0.0,
    // this.imageProvider,
    required this.cardTitle,
  }) : super(key: key);

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.cardelevation,
      child: Container(
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints.expand(
          width: 70,
          height: 70,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: widget.cardColor,
          // image: DecorationImage(
          //   image: AssetImage(widget.imageProvider ?? ''),
          // ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: FittedBox(
                child: Text(
                  widget.cardTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
