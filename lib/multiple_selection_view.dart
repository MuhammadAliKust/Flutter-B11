import 'package:flutter/material.dart';

class MultipleSelectionListView extends StatefulWidget {
  MultipleSelectionListView({super.key});

  @override
  State<MultipleSelectionListView> createState() =>
      _MultipleSelectionListViewState();
}

class _MultipleSelectionListViewState extends State<MultipleSelectionListView> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiple Selection List View"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return Card(
                color: selectedIndex.contains(i)
                    ? Colors.blue.withOpacity(0.5)
                    : Colors.white,
                elevation: 10,
                child: ListTile(
                  onTap: () {
                    if (selectedIndex.contains(i)) {
                      selectedIndex.remove(i);
                    } else {
                      selectedIndex.add(i);
                    }
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
