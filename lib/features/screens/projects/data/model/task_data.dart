import 'package:flutter/material.dart';

class TaskData {
  final Color dotColor;
  final Color progressColor;
  final double progress;
  final String title;
  final String subTitle;
  final IconData icon;
  final String progressText;

  TaskData(
      {required this.dotColor,
      required this.progressColor,
      required this.progress,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.progressText});
}

final taskList = [
  TaskData(
      dotColor: Colors.blueAccent,
      progressColor: Colors.blueAccent,
      progress: 60.0,
      title: "Inspect HVAC System",
      subTitle: "Weekly checkup progress",
      progressText: "3/5",
      icon: Icons.build_circle),
  TaskData(
      dotColor: Colors.orange,
      progressColor: Colors.orange,
      progress: 120.0,
      title: "Check Electrical Panels",
      subTitle: "Monthly inspection",
      progressText: "6/10",
      icon: Icons.electrical_services),
  TaskData(
      dotColor: Colors.green,
      progressColor: Colors.green,
      progress: 90.0,
      title: "Update Maintenance Logs",
      subTitle: "System documentation updates",
      progressText: "3/7",
      icon: Icons.note_alt),
  TaskData(
      dotColor: Colors.deepPurple,
      progressColor: Colors.deepPurple,
      progress: 150.0,
      title: "Replace Air Filters",
      subTitle: "Quarterly replacement",
      progressText: "5/8",
      icon: Icons.filter_alt),
  TaskData(
      dotColor: Colors.redAccent,
      progressColor: Colors.redAccent,
      progress: 80.0,
      title: "Emergency Equipment Test",
      subTitle: "Bi-annual drill tracking",
      progressText: "2/4",
      icon: Icons.warning_amber),
];
