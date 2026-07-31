import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_demo_app/views/widget_tree.dart';

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
            Lottie.asset(
              'assets/lotties/lines.json',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 450,
            ),

            const FittedBox(
              child: Text(
                'Demo App',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 50.0,
                ),
              ),
            ),

            const SizedBox(height: 10.0),

            FilledButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const WidgetTree()),
                );
              },

              style: FilledButton.styleFrom(backgroundColor: Colors.teal),

              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const WidgetTree()),
                );
              },

              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
