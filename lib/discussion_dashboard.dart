import 'package:flutter/material.dart';

class DiscussionDashboard extends StatefulWidget {
  @override
  _DiscussionDashboardState createState() => _DiscussionDashboardState();
}

class _DiscussionDashboardState extends State<DiscussionDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discuss"),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 2.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurpleAccent,
                Colors.blue[800],
              ],
              stops: [
                0.1,
                0.9,
              ]),
        ),
        child: Center(
          child: Text(
            'Chat with Officials',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
