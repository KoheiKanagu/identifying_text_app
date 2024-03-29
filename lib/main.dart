import 'package:flutter/material.dart';
import 'package:identifying_text_app/body_content.dart';
import 'package:identifying_text_app/header_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.blue,
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Identify",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 240.0,
            pinned: true,
            title: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Welcome"),
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: "Search"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                elevation: 0),
            flexibleSpace: FlexibleSpaceBar(background: HeaderContent()),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return BodyContent(index: index);
            }),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(height: 100),
    );
  }
}
