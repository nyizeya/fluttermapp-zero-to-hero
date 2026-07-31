import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const HeroWidget(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Hello Card Demo'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
