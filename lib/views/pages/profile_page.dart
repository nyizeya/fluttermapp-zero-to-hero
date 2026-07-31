import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/notifiers.dart';
import 'package:flutter_demo_app/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
