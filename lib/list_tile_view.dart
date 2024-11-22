import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return Card(
                color: Colors.blue.withOpacity(0.5),
                elevation: 10,
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notificatino Title"),
                  subtitle: Text("Notification Sub Title"),
                  trailing: Text("12:40 PM"),
                  // tileColor: Colors.blue.withOpacity(0.6),
                ),
              );
            }));
  }
}
