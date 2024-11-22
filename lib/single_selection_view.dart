import 'package:flutter/material.dart';

class SingleSelectionListView extends StatefulWidget {
  SingleSelectionListView({super.key});

  @override
  State<SingleSelectionListView> createState() =>
      _SingleSelectionListViewState();
}

class _SingleSelectionListViewState extends State<SingleSelectionListView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Single Selection List View"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return Card(
                color: selectedIndex == i
                    ? Colors.blue.withOpacity(0.5)
                    : Colors.white,
                elevation: 10,
                child: ListTile(
                  onTap: () {
                    selectedIndex = i;
                    setState(() {});
                  },
                  leading: Icon(Icons.notifications),
                  title: Text("Selected Index: $selectedIndex"),
                  subtitle: Text("Loop Index: $i"),
                  trailing: Text("12:40 PM"),
                  // tileColor: Colors.blue.withOpacity(0.6),
                ),
              );
            }));
  }
}
