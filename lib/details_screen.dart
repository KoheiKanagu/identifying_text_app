import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String english =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  final String japanese =
      "吾輩は猫である。名前はまだ無い。どこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。この書生というのは時々我々を捕えて煮て食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ButtonTheme(
            buttonColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {},
                  child: Text(
                    "Text",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Text(
                    "Original",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(68),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                createDropdownButton("English"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Icon(Icons.swap_horiz),
                ),
                createDropdownButton("Japanese"),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: <Widget>[
            createCard(english),
            createCard(japanese),
          ],
        ));
  }

  Card createCard(String content) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Text(
              content,
              style: TextStyle(
                wordSpacing: 12,
                fontSize: 20,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {},
                    child: Icon(Icons.library_books),
                    shape: CircleBorder(),
                    fillColor: Colors.black26,
                    padding: EdgeInsets.all(12),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Icon(Icons.create),
                    shape: CircleBorder(),
                    fillColor: Colors.black26,
                    padding: EdgeInsets.all(12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownButton createDropdownButton(String title) {
    return DropdownButton(
      onChanged: (_) {},
      value: title,
      items: [
        DropdownMenuItem(
            value: title,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.flag),
                Text(title),
              ],
            )),
      ],
    );
  }
}
