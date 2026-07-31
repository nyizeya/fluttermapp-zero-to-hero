import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/widget_tree.dart';
import 'package:flutter_demo_app/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeroWidget(),

            const SizedBox(height: 20.0),

            FilledButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const WidgetTree()),
                );
              },

              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColorLight,
              ),

              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
