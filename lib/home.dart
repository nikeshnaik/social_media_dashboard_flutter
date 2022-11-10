import 'package:flutter/material.dart';
import 'package:social_media_dashboard/followers_tile.dart';
import 'package:social_media_dashboard/header.dart';

import 'overview_card.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Map<String, String>> data = [
    {
      "username": "@nathan",
      "socialPlatform": "facebook",
      "followerCount": "1987",
      "todayUpdates": "12"
    },
    {
      "username": "@gregory",
      "socialPlatform": "twitter",
      "followerCount": "1044",
      "todayUpdates": "99"
    },
    {
      "username": "@realnathanf",
      "socialPlatform": "instagram",
      "followerCount": "11k",
      "todayUpdates": "1099"
    },
    {
      "username": "Nathan F.",
      "socialPlatform": "youtube",
      "followerCount": "8239",
      "todayUpdates": "144"
    }
  ];

  final List<Map<String, String>> overviewData = [
    {
      "title": "Page Views",
      "socialPlatform": "facebook",
      "value": "87",
      "updates": "3%",
      "netChange": "positive"
    },
    {
      "title": "Likes",
      "socialPlatform": "facebook",
      "value": "52",
      "updates": "2%",
      "netChange": "negative"
    },
    {
      "title": "Likes",
      "socialPlatform": "instagram",
      "value": "5462",
      "updates": "2257%",
      "netChange": "positive"
    },
    {
      "title": "Profile Views",
      "socialPlatform": "instagram",
      "value": "52k",
      "updates": "1375%",
      "netChange": "positive"
    },
    {
      "title": "Retweets",
      "socialPlatform": "twitter",
      "value": "117",
      "updates": "303%",
      "netChange": "positive"
    },
    {
      "title": "Likes",
      "socialPlatform": "twitter",
      "value": "507",
      "updates": "553%",
      "netChange": "positive"
    },
    {
      "title": "Likes",
      "socialPlatform": "youtube",
      "value": "107",
      "updates": "19%",
      "netChange": "negative"
    },
    {
      "title": "Likes",
      "socialPlatform": "youtube",
      "value": "1407",
      "updates": "12%",
      "netChange": "negative"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(32, 34, 47, 1),
          // color: Colors.amber),
        ),
        child: SingleChildScrollView(
            child: Column(children: [
          const Header(),
          // Todo: How to increase height of COntainer based on listview items, currently the next widget after listview shrinks listview.. wtf
          // Expanded(
          //     child: ListView.builder(
          //         itemCount: data.length,
          //         itemBuilder: (context, index) => Padding(
          //             padding: const EdgeInsets.only(top: 24),
          //             child: FollowerTile(
          //                 username: data[index]["username"]!,
          //                 social_platform: data[index]["social_platform"]!,
          //                 today_updates: data[index]["today_updates"]!,
          //                 follower_count: data[index]["follower_count"]!)))),
          ...generateFollowerTiles(),
          const DefaultTextStyle(
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 3),
            child: Text("Overview - Today"),
          ),

          ...generateOverviewTiles()
        ])));
  }

  List<Widget> generateFollowerTiles() {
    List<Widget> tiles = [];

    for (var element in data) {
      FollowerTile tile = FollowerTile(
          username: element["username"]!,
          socialPlatform: element["socialPlatform"]!,
          todayUpdates: element["todayUpdates"]!,
          followerCount: element["followerCount"]!);
      Padding paddingOfTile =
          Padding(padding: const EdgeInsets.only(top: 24), child: tile);
      tiles.add(paddingOfTile);
    }

    return tiles;
  }

  List<Widget> generateOverviewTiles() {
    List<Widget> overviewTiles = [];

    for (var element in overviewData) {
      Overview tile = Overview(
          title: element["title"]!,
          socialPlatform: element["socialPlatform"]!,
          value: element["value"]!,
          updates: element["updates"]!,
          netChange: element["netChange"]!);

      Padding paddingOfTile =
          Padding(padding: const EdgeInsets.only(top: 16), child: tile);

      overviewTiles.add(paddingOfTile);
    }

    return overviewTiles;
  }
}
