import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/pages/login_page.dart';
import 'package:flutter_demo_app/views/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lotties/lines.json',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400,
                ),

                const SizedBox(height: 60.0),

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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const OnboardingPage(),
                      ),
                    );
                  },

                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.teal,
                    minimumSize: const Size(double.infinity, 40),
                  ),

                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),

                const SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(title: 'Login'),
                      ),
                    );
                  },

                  style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),

                  child: const Text('Login', style: TextStyle(fontSize: 18.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
