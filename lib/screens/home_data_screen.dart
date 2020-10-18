import 'package:flutter/material.dart';

class Homedatascreen extends StatefulWidget {
  @override
  _Homedatascreen createState() => _Homedatascreen();
}

class _Homedatascreen extends State<Homedatascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Good day'),
          backgroundColor: Colors.red[200],
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            MyHabit("HabitTitle", 15),
            MyHabit("happy", 15),
            MyHabit("h", 15),
            MyHabit("Haaa", 15),
            MyHabit("Habi", 15),
            MyHabit("HabitTi", 15),
            MyHabit("HabitTitle", 15),
            MyHabit("HabitTitle", 15),
            MyHabit("Habit", 15),
            MyHabit("Title", 15),
            MyHabit("what ever", 15),
            MyHabit("elinddsoe", 15),
            MyHabit("HabitTitle", 15),
          ],
        )));
  }
}

// ignore: must_be_immutable
class MyHabit extends StatefulWidget {
  //variables show to the User when in the homepage,
  String HabitTitle;
  int HabitTrack;
  //add any other things leave at 2 for now
  MyHabit(this.HabitTitle, this.HabitTrack);
  @override
  _MyHabitState createState() => _MyHabitState();
}

class _MyHabitState extends State<MyHabit> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        widget.HabitTitle,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
