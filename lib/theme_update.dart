import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ThemeUpdate extends StatefulWidget {
  const ThemeUpdate({super.key});

  @override
  State<ThemeUpdate> createState() => _ThemeUpdateState();
}

class _ThemeUpdateState extends State<ThemeUpdate> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              trailing: SizedBox(
                  width: 48,
                  height: 24,
                  child: FlutterSwitch(
                    toggleSize: 18,
                    toggleColor: Color.fromRGBO(37, 43, 66, 1),
                    inactiveColor: Colors.amber,
                    value: darkMode,
                    activeColor: Colors.greenAccent,
                    onToggle: (value) {
                      setState(() {
                        darkMode = !darkMode;
                      });
                    },
                  )),
              textColor: Colors.amber,
            )));
  }
}


//  Container(
//                 margin: const EdgeInsets.fromLTRB(0, 19, 0, 0),
//                 decoration: const BoxDecoration(
//                     border: Border(
//                         top: BorderSide(
//                             width: 2.0, color: Color.fromRGBO(51, 58, 85, 1)))),
//                 child: Material(
//                     color: const Color.fromRGBO(32, 34, 47, 1),
//                     borderOnForeground: true,
//                     child: ListTile(
//                       contentPadding: const EdgeInsets.fromLTRB(0, 19, 0, 20),
//                       leading: const DefaultTextStyle(
//                           style: TextStyle(
//                               color: Color.fromRGBO(140, 152, 198, 1),
//                               fontSize: 20,
//                               fontWeight: FontWeight.w700,
//                               fontStyle: FontStyle.normal),
//                           child: Text("Dark Mode")),
//                       trailing: SizedBox(
//                           width: 48,
//                           height: 24,
//                           child: FlutterSwitch(
//                             toggleSize: 18,
//                             toggleColor: Color.fromRGBO(37, 43, 66, 1),
//                             inactiveColor: Colors.amber,
//                             value: dark,
//                             activeColor: Colors.greenAccent,
//                             onToggle: (value) {
//                               setState(() {
//                                 dark = true;
//                               });
//                             },
//                           )),
//                       textColor: Colors.amber,
//                     ))),