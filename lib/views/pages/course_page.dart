import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/activity.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_demo_app/views/widgets/hero_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<Activity> getData() async {
    var url = Uri.https('bored-api.appbrewery.com', 'random');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return Activity.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load activity');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Error'));
          }

          Activity activity = snapshot.data!;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsGeometry.all(20.0),
              child: Column(
                children: [
                  HeroWidget(title: activity.activity),
                  Text(activity.activity),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
