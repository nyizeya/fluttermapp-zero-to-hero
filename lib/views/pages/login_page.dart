import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(
    text: 'demo@example.com',
  );
  TextEditingController controllerPw = TextEditingController(text: '12345678');

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerPw.dispose();
    controllerEmail.dispose();
    super.dispose();
  }

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
                Lottie.asset('assets/lotties/3D-Home.json'),

                const SizedBox(height: 20.0),

                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),

                const SizedBox(height: 20.0),

                TextField(
                  obscureText: true,
                  controller: controllerPw,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),

                const SizedBox(height: 20.0),

                FilledButton(
                  onPressed: () {
                    loginPressed();
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: Text(widget.title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginPressed() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const WidgetTree()),
      (route) => false,
    );
  }
}
