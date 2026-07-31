import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_demo_app/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Lottie.asset('assets/lotties/3D-Home.json'),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic Layout', style: KTextStyle.titleTealText),
                    Text(
                      'The description of this',
                      style: KTextStyle.descriptionText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
