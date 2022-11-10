import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  String title;
  String socialPlatform;
  String value;
  String updates;
  String netChange;

  Overview(
      {super.key,
      required this.title,
      required this.socialPlatform,
      required this.value,
      required this.updates,
      required this.netChange});

  @override
  Widget build(BuildContext context) {
    Map<String, IconData> mapping = {
      "facebook": Icons.facebook,
      "twitter": Icons.facebook,
      "instagram": Icons.facebook,
      "youtube": Icons.facebook
    };

    Map<String, Color> logoColor = {
      "facebook": const Color.fromRGBO(23, 143, 245, 1),
      "twitter": const Color.fromRGBO(29, 161, 242, 1),
      "instagram": const Color.fromRGBO(222, 72, 150, 100),
      "youtube": const Color.fromRGBO(196, 3, 43, 1)
    };
    Map<String, Color> arrowColor = {
      "negative": const Color.fromRGBO(220, 65, 76, 1),
      "positive": const Color.fromRGBO(30, 181, 137, 1)
    };

    return Container(
      width: 350,
      height: 125,
      child: Card(
        elevation: 5,
        color: const Color.fromRGBO(37, 43, 66, 1),
        // color: Colors.amber,
        child: Container(
            padding: const EdgeInsets.fromLTRB(24, 20, 31, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color.fromRGBO(140, 152, 198, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Icon(
                      mapping[socialPlatform]!,
                      size: 30,
                      color: logoColor[socialPlatform]!,
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_up,
                              size: 16,
                              color: arrowColor[netChange]!,
                            ),
                            Text(
                              updates,
                              style: TextStyle(
                                color: arrowColor[netChange]!,
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
