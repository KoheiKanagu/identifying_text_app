import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  final language = [
    "English",
    "Japanese",
  ];

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: new EdgeInsets.only(
        top: statusBarHeight + 66,
        left: 28,
        right: 28,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Identifying Text",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 28),
            elevation: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Choose Language",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 24,
                  child: VerticalDivider(
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                DropdownButton(
                  value: language.first,
                  items: language
                      .map((f) => createMenuItem(f, Icon(Icons.flag)))
                      .toList(),
                  onChanged: (_) {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem createMenuItem(String title, Icon icon) {
    return DropdownMenuItem(
        value: title,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            icon,
            Text(title),
          ],
        ));
  }
}
