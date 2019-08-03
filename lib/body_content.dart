import 'package:flutter/material.dart';
import 'package:identifying_text_app/my_content.dart';

class BodyContent extends StatelessWidget {
  final int index;

  final contents = [
    MyContent(
      "History blackboard writing",
      "King Arthur hid his treasures here and Merlin enchanted the ...",
      "2019.03.08",
      Image.network("https://picsum.photos/128/128"),
    ),
    MyContent(
      "Shoes price list",
      "Air force one 44size 80dollers 41size 72dollers",
      "2019.03.08",
      Image.network("https://picsum.photos/129/129"),
    ),
    MyContent(
      "Martin's daily schedule",
      "AM\n7:00 brush teeth",
      "2019.03.08",
      Image.network("https://picsum.photos/130/130"),
    ),
  ];

  BodyContent({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 28,
        left: 22,
        right: 22,
      ),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      contents[index % 3].title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      contents[index % 3].content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      contents[index % 3].date,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: contents[index % 3].image,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 24,
                    width: 48,
                    child: OutlineButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.close,
                        size: 16,
                        color: Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(height: 8, color: Colors.grey),
        ],
      ),
    );
  }
}
