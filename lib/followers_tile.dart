import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FollowerTile extends StatelessWidget {
  String username;
  String follower_count;
  String social_platform;
  String today_updates;

  FollowerTile(
      {super.key,
      required this.username,
      required this.social_platform,
      required this.today_updates,
      required this.follower_count});

  @override
  Widget build(BuildContext context) {
    Map<String, IconData> mapping = {
      "facebook": Icons.facebook,
      "twitter": Icons.facebook,
      "instagram": Icons.facebook,
      "youtube": Icons.facebook
    };

    Map<String, Color> cardTopBorder = {
      "facebook": const Color.fromRGBO(23, 143, 245, 1),
      "twitter": const Color.fromRGBO(29, 161, 242, 1),
      "instagram": const Color.fromRGBO(222, 72, 150, 100),
      "youtube": const Color.fromRGBO(196, 3, 43, 1)
    };

    return SizedBox(
      width: 350,
      height: 216,
      child: Card(
          elevation: 3,
          borderOnForeground: true,
          shape: Border(
              top:
                  BorderSide(width: 4, color: cardTopBorder[social_platform]!)),
          child: Container(
              color: const Color.fromRGBO(37, 43, 66, 1),
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          mapping[social_platform],
                          color: Colors.blue,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          username,
                          style: const TextStyle(
                            color: Color.fromRGBO(140, 152, 198, 1),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ]),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        follower_count,
                        style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 56,
                            letterSpacing: -2),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        "FOLLOWERS",
                        style: TextStyle(
                            color: Color.fromRGBO(140, 152, 198, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            letterSpacing: 5,
                            fontStyle: FontStyle.normal),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 24, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Icon(Icons.arrow_drop_up,
                                size: 20,
                                color: Color.fromRGBO(30, 181, 137, 1)),
                            Text("$today_updates Today",
                                style: const TextStyle(
                                    color: Color.fromRGBO(30, 181, 137, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal))
                          ]))
                ],
              ))),
    );
  }
}
