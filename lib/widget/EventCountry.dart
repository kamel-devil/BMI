import 'package:flutter/material.dart';
import './HomeEvent.dart';
import './Loaction.dart';
import './Setting.dart';
import './chats.dart';

class EventCountry extends StatefulWidget {
  @override
  _EventCountryState createState() => _EventCountryState();
}

class _EventCountryState extends State<EventCountry> {
  int currentScreenValue = 0;
  List<Widget> screens = [
    HomeEvent(),
    Chats(),
    Setting(),
    Location(),
  ];

  Widget currentScreen = HomeEvent();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeEvent();
                        currentScreenValue = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentScreenValue == 0
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        Text(
                          'Event',
                          style: TextStyle(
                              color: currentScreenValue == 0
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chats();
                        currentScreenValue = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          color: currentScreenValue == 1
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                              color: currentScreenValue == 1
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Location();
                        currentScreenValue = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_city,
                          color: currentScreenValue == 2
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                              color: currentScreenValue == 2
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        currentScreenValue = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: currentScreenValue == 3
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              color: currentScreenValue == 3
                                  ? Colors.blue
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
