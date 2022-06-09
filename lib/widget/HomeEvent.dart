import 'package:flutter/material.dart';

class HomeEvent extends StatefulWidget {
  @override
  _HomeEventState createState() => _HomeEventState();
}

class _HomeEventState extends State<HomeEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Event'),
      ),
    );
  }
}
