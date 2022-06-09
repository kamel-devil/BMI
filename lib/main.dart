import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled1/widget/Home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login/Register',
    debugShowCheckedModeBanner: false,
    home: EventCountry(),
  ));
}

class EventCountry extends StatefulWidget {
  @override
  EventCountryState createState() => EventCountryState();
}

class EventCountryState extends State<EventCountry> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/project3.gif'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Event Country',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                  fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}
