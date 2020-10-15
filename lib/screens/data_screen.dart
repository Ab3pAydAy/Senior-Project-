import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/screens/home_data_screen.dart';

import 'notifications.dart';
import 'account_screen.dart';
import 'newhabit_screen.dart';

class Datascreen extends StatefulWidget {
  @override
  _DatascreenState createState() => _DatascreenState();
}

class _DatascreenState extends State<Datascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar with the title
      appBar: AppBar(title: Icon(Icons.favorite, color: Colors.white)),
      backgroundColor: Colors.red[100],
      //navigationbar at the  bottom of the screen, containing different icons to send user to page
      // 5 Icons in the navigationbar, each sending to there different pages,
      //HOMESCREEN,DATASCREEN, ACCOUNTSCREEN, HABITSCREEN, ADDINGSCREEN
      bottomNavigationBar: Row(
        children: <Widget>[
          //Icon Button takes user to the Home page, where user see all of the habits lined up
          IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.red,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Homedatascreen()));
                });
              }),
          //Icon button takes user to a calender showing every event done
          IconButton(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.green[400],
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Datascreen()));
                });
              }),
          //Icon button takes user to make a new habbit
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.purple,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Newhabit()));
                });
              }),
          // Icon button takes user to the upcomming habit page
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                });
              }),
          //Icon button takes user to our Account page, where user sees personal info
          IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Accountscreen()));
                });
              })
        ],
      ),
      //body of the page containing the calender and the data of everything
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
