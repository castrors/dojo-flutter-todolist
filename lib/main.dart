import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.plus_one),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 24),
                  Text(
                    'All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 48),
                  ),
                  Text('23 Tasks',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 24,
                          color: Colors.white)),
                ],
              ),
              padding: EdgeInsets.all(36.0),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Padding(
                  padding: EdgeInsets.all(36.0),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('Call Max'),
                        subtitle: Text(
                          '20:15 • April 29',
                          style: TextStyle(color: Colors.red),
                        ),
                        trailing: Checkbox(
                          onChanged: (bool value) {},
                          value: index % 2 == 0,
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
