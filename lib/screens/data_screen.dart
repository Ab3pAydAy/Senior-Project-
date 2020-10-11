import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Datascreen extends StatefulWidget {
  @override
  _DatascreenState createState() => _DatascreenState();
}

int total = 0;

class _DatascreenState extends State<Datascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar with the title
      appBar: AppBar(title: Icon(Icons.favorite, color: Colors.white)),
      backgroundColor: Colors.red[100],
      //navigationbar at the  bottom of the screen, containing different icons to send user to page
      bottomNavigationBar: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.red,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  total += 1;
                });
              }),
          IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.green[400],
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.purple,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      //body of the page containing the calender and the data of everything
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
