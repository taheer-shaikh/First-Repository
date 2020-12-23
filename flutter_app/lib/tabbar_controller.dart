import 'package:flutter/material.dart';

class TabbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar Controller"),
            backgroundColor: Colors.deepOrange,
            bottom: TabBar(
              indicatorWeight: 7,
                isScrollable: true,
                indicatorColor: Colors.cyanAccent,
                tabs: <Tab>[
                  Tab(text: "Incoming Calls",icon: Icon(Icons.call),),
                  Tab(text: "Missed Calls",icon: Icon(Icons.phone_missed)),
                  Tab(text: "Received Calls",icon: Icon(Icons.add_ic_call)),
                  Tab(text: "Rejected Calls",icon: Icon(Icons.cancel)),
                  Tab(text: "Unknown Number Calls",icon: Icon(Icons.person_rounded)),
                  Tab(text: "Video Calls",icon: Icon(Icons.video_call)),
                ]),
          ),
          body: TabBarView(
              children: <Widget>[
                _createList("Incoming Calls"),
                _createList("Missed Calls"),
                _createList("Received Calls"),
                _createList("Rejected Calls"),
                _createList("Unknown Number Calls"),
                _createList("Video Calls"),
              ]
          ),
        ));
  }

  Widget _createList(String s)
  {
    return ListView.builder(
        itemBuilder: (context,int index)
            {
              return ListTile(
                title: Text("$s $index"),
              );
            }
    );
  }
}