import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, String>> myList = List.generate(1000, (index) {
    return {
      "id": index.toString(),
      "title": "This is the title $index",
      "subtitle": "This is the subtitle $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) => Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(myList[index]["id"]!),
                backgroundColor: Colors.purple,
              ),
              title: Text(myList[index]["title"]!),
              subtitle: Text(myList[index]["subtitle"]!),
              trailing: Icon(Icons.add_link),
            ),
          ),
        ),
      ),
    );
  }
}
