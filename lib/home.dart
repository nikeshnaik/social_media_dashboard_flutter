// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:social_media_dashboard/followers_tile.dart';
import 'package:social_media_dashboard/header.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Map<String, String>> data = [
    {
      "username": "@nathan",
      "social_platform": "facebook",
      "follower_count": "1987",
      "today_updates": "12"
    },
    {
      "username": "@gregory",
      "social_platform": "twitter",
      "follower_count": "1044",
      "today_updates": "99"
    },
    {
      "username": "@realnathanf",
      "social_platform": "instagram",
      "follower_count": "11k",
      "today_updates": "1099"
    },
    {
      "username": "Nathan F.",
      "social_platform": "youtube",
      "follower_count": "8239",
      "today_updates": "144"
    },
    {
      "username": "@nathan",
      "social_platform": "facebook",
      "follower_count": "1987",
      "today_updates": "12"
    },
    {
      "username": "@gregory",
      "social_platform": "twitter",
      "follower_count": "1044",
      "today_updates": "99"
    },
    {
      "username": "@realnathanf",
      "social_platform": "instagram",
      "follower_count": "11k",
      "today_updates": "1099"
    },
    {
      "username": "Nathan F.",
      "social_platform": "youtube",
      "follower_count": "8239",
      "today_updates": "144"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
      child: Column(children: [
        const Header(),
        Expanded(
            child: ListView.builder(
                primary: false,
                itemCount: data.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: FollowerTile(
                        username: data[index]["username"]!,
                        social_platform: data[index]["social_platform"]!,
                        today_updates: data[index]["today_updates"]!,
                        follower_count: data[index]["follower_count"]!)))),
      ]),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(32, 34, 47, 1),
      ),
    );
  }

  // List<Widget> generateFollowerTile() {
  //   List<Widget> tiles = [];

  //   for (var element in data) {
  //     FollowerTile tile = FollowerTile(
  //         username: element["username"]!,
  //         social_platform: element["social_platform"]!,
  //         today_updates: element["today_updates"]!,
  //         follower_count: element["follower_count"]!);
  //     Padding paddingOfTile =
  //         Padding(padding: const EdgeInsets.only(top: 24), child: tile);
  //     tiles.add(paddingOfTile);
  //   }

  //   return tiles;
  // }

  // Iterable<Widget> generateIteratingTiles() {
  //   return data.map((e) => Padding(
  //       padding: const EdgeInsets.only(top: 24),
  //       child: FollowerTile(
  //           username: e["username"]!,
  //           social_platform: e["social_platform"]!,
  //           today_updates: e["today_updates"]!,
  //           follower_count: e["follower_count"]!)));
  // }
}
