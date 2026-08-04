import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/constants.dart';
import 'package:flutter_demo_app/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Lottie.asset('assets/lotties/welcome.json'),

                const SizedBox(height: 20.0),

                const Text(
                  'Flutter is the best hybrid tech for mobile app development!',
                  style: KTextStyle.descriptionText,
                  textAlign: TextAlign.center,
                ),

                FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const LoginPage(title: 'Register'),
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
