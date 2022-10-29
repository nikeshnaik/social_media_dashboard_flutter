import 'package:flutter/material.dart';
import 'package:social_media_dashboard/home.dart';

class SocialMediaDashboard extends StatelessWidget {
  const SocialMediaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

void main() {
  print("App Starting");

  runApp(const SocialMediaDashboard());
}
