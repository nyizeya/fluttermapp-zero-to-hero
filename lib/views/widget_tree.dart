import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/notifiers.dart';
import 'package:flutter_demo_app/views/pages/home_page.dart';
import 'package:flutter_demo_app/views/pages/profile_page.dart';
import 'package:flutter_demo_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [const HomePage(), const ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) =>
            pages.elementAt(selectedPage),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
