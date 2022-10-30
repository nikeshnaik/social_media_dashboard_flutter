// ignore: import_of_legacy_library_into_null_safe
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

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
          children: <Widget>[
            const DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              child: Text("Social Media Dashboard"),
            ),
            const SizedBox(height: 4),
            const DefaultTextStyle(
              style: TextStyle(
                  color: Color.fromRGBO(140, 152, 198, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal),
              child: Text("Total Followers: 23,004"),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: 2.0, color: Color.fromRGBO(51, 58, 85, 1)))),
                child: Material(
                    color: const Color.fromRGBO(32, 34, 47, 1),
                    borderOnForeground: true,
                    child: ListTile(
                      contentPadding: const EdgeInsets.fromLTRB(0, 19, 0, 20),
                      leading: const DefaultTextStyle(
                          style: TextStyle(
                              color: Color.fromRGBO(140, 152, 198, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                          child: Text("Dark Mode")),
                      trailing: CustomSwitch(
                        value: dark,
                        onChanged: (value) => dark = false,
                      ),
                      textColor: Colors.amber,
                    ))),
          ],
        ));
  }
}
