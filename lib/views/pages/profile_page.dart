import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = TextEditingController();
  bool isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),

            Checkbox(
              value: isChecked,
              activeColor: Colors.redAccent,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              value: isChecked,
              title: const Text('Click me'),
              onChanged: (value) {
                setState(() => isChecked = value ?? false);
              },
            ),

            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() => isSwitched = value);
              },
            ),

            SwitchListTile.adaptive(
              title: const Text('Switch me'),
              value: isSwitched,
              activeThumbColor: Colors.amberAccent,
              onChanged: (value) => setState(() => isSwitched = value),
            ),

            Slider(
              max: 10,
              divisions: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() => sliderValue = value);

                print(sliderValue);
              },
            ),

            InkWell(
              splashColor: Colors.teal,
              hoverDuration: const Duration(microseconds: 100),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white12,
              ),
              onTap: () {
                print("I just taped on it");
              },
            ),

            const SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: const Text('Elevated Button'),
            ),

            const SizedBox(height: 20.0),

            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                iconSize: 25,
                iconColor: Colors.black,
              ),
              child: const Icon(Icons.add),
            ),

            const SizedBox(height: 20.0),

            TextButton(onPressed: () {}, child: const Text('Text Button')),

            const SizedBox(height: 20.0),

            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 20.0),

            const CloseButton(color: Colors.red),

            const SizedBox(height: 20.0),

            const BackButton(),
          ],
        ),
      ),
    );
  }
}
