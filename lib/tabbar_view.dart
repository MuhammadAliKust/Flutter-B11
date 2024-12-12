import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Home",style: TextStyle(fontSize: 30),),
          ),
          Center(
            child: Text("Favorite",style: TextStyle(fontSize: 30),),
          ),
          Center(
            child: Text(
              "Person",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}
