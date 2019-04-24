import 'package:flutter/material.dart';
import 'alerts_dashboard.dart';
import 'appointments_dashboard.dart';
import 'dashboard_page.dart';
import 'discussion_dashboard.dart';
import 'donate_dashboard.dart';
import 'emergency_dashboard.dart';
import 'medical_history_dashboard.dart';
import 'splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bangalore Health',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/dashboard": (context) {
          return DashboardPage();
        },
        "/emergency_dashboard": (context) {
          return EmergencyDashboard();
        },
        "/alerts_dashboard": (context) {
          return AlertsDashboard();
        },
        "/appointment_dashboard": (context) {
          return AppointmentDashboard();
        },
        "/medical_history_dashboard": (context) {
          return MedicalHistoryDashboard();
        },
        "/donate_dashboard": (context) {
          return DonateDashboard();
        },
        "/discussion_dashboard": (context) {
          return DiscussionDashboard();
        }
      },
    );
  }
}
