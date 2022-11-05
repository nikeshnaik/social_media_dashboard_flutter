import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:social_media_dashboard/theme_update.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = false;

    return Container(
        margin: const EdgeInsets.only(top: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              child: Text("Social Media Dashboard"),
            ),
            SizedBox(height: 4),
            DefaultTextStyle(
              style: TextStyle(
                  color: Color.fromRGBO(140, 152, 198, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
              child: Text("Total Followers: 23,004"),
            ),
            ThemeUpdate()
          ],
        ));
  }
}
