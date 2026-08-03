import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'Hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/bg.jpg',
              color: Colors.teal,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 50,
              color: Colors.white60,
            ),
          ),
        ),
      ],
    );
  }
}
