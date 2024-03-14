import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final String courseName;
  final IconData downloadIcon;

  const CourseTile(
      {super.key, required this.courseName, required this.downloadIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.pink,
      title: Text(
        courseName,
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      trailing: IconButton(
        tooltip: "download",
        icon: Icon(downloadIcon),
        onPressed: () {
          // Handle download button press
        },
      ),
      onTap: () {
        // Handle course selection
      },
    );
  }
}
