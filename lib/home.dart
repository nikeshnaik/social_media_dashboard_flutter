// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:social_media_dashboard/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          Header(),
        ],
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
      ),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(32, 34, 47, 1),
      ),
    );
  }
}
