import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Healthy बेंगलुरु",
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
        elevation: 0.5,
        backgroundColor: Colors.pink,
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          _buildCard("Emergency", FontAwesomeIcons.ambulance, Colors.red,
              onTap: () {
            Navigator.of(context).pushNamed("/emergency_dashboard");
          }),
          _buildCard("Alerts", FontAwesomeIcons.newspaper, Colors.blue,
              onTap: () {
            Navigator.of(context).pushNamed("/alerts_dashboard");
          }),
          _buildCard("Book appointment", Icons.healing, Colors.orange,
              onTap: () {
            Navigator.of(context).pushNamed("/appointment_dashboard");
          }),
          _buildCard(
              "Medical History", FontAwesomeIcons.clinicMedical, Colors.teal,
              onTap: () {
            Navigator.of(context).pushNamed("/medical_history_dashboard");
          }),
          _buildCard("Donate", FontAwesomeIcons.donate, Colors.green,
              onTap: () {
            Navigator.of(context).pushNamed("/donate_dashboard");
          }),
          _buildCard(
              "Discuss", Icons.question_answer, Colors.deepPurpleAccent,
              onTap: () {
            Navigator.of(context).pushNamed("/discussion_dashboard");
          }),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, Color backgroundColor,
      {GestureTapCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        color: backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                icon,
                size: 50.0,
                color: Colors.white,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
