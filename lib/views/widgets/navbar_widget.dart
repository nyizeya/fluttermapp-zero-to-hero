import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            const NavigationDestination(
              icon: Icon(Icons.person_2),
              label: 'Profile',
            ),
          ],
          selectedIndex: selectedPage,
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
        );
      },
    );
  }
}
