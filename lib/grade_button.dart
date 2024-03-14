import 'package:flutter/material.dart';
//import 'grade_courses_page.dart';

class GradeButton extends StatelessWidget {
  final String grade;
  final VoidCallback onPressed;

  const GradeButton({super.key, required this.grade, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        grade,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
