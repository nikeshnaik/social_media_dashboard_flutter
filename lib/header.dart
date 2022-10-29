import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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
          )
        ],
      ),
    );
  }
}
