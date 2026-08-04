import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(20.0),
          child: Column(children: [HeroWidget(title: 'Course Page')]),
        ),
      ),
    );
  }
}
