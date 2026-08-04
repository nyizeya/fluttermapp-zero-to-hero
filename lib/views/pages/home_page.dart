import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/widgets/container_widget.dart';
import 'package:flutter_demo_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const HeroWidget(title: ''),

            const SizedBox(height: 20),

            ...List.generate(5, (index) {
              return ContainerWidget(
                title: 'Basic Layout $index',
                description: 'This is description $index',
              );
            }),
          ],
        ),
      ),
    );
  }
}
