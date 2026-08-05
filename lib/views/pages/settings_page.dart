import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/pages/expended_flexible_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final controller = TextEditingController();
  bool isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilledButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Hello!'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: const Text('Open Snackbar'),
              ),

              const Divider(),

              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text('Alert Content'),
                        title: const Text('Alert Title'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Open Alert Dialog'),
              ),

              const SizedBox(height: 20),

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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1.0),
                  ),
                ),
                onTap: () {
                  print("I just taped on it");
                },
              ),

              const SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ExpendedFlexiblePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Show expended and flexible'),
              ),

              const SizedBox(height: 20.0),

              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(iconSize: 25),
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
      ),
    );
  }
}
