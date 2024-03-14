import 'package:flutter/material.dart';
import 'course_tile.dart';

class GradeCoursesPage extends StatelessWidget {
  final String grade;

  const GradeCoursesPage({super.key, required this.grade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(grade),
      ),
      body: ListView(
        children: const [
          CourseTile(courseName: 'Math', downloadIcon: Icons.download),
          CourseTile(courseName: 'Science', downloadIcon: Icons.download),
          CourseTile(courseName: 'English', downloadIcon: Icons.download),
          CourseTile(courseName: 'History', downloadIcon: Icons.download),
          // Add more course tiles here
        ],
      ),
    );
  }
}
