import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  HeroWidget({super.key, required this.title, this.nextPage});

  final String title;
  Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: nextPage != null
              ? () => Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => nextPage!))
              : null,
          child: Hero(
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
        ),
        FittedBox(
          child: Text(
            title,
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
