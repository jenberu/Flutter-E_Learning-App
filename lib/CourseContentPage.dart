import 'package:flutter/material.dart';

class CourseContentPage extends StatelessWidget {
  final String courseName;

  const CourseContentPage({Key? key, required this.courseName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example course content for demonstration purposes
    List<String> content = [
      'Introduction to $courseName',
      'Lesson 1: Basics of $courseName',
      'Lesson 2: Advanced Topics in $courseName',
      'Lesson 3: Practical Applications of $courseName',
      // Add more lessons or content here
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Course Content: $courseName'),
        backgroundColor: Colors.pink, // Set app bar background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15), // Set border radius for app bar
          ),
          side: BorderSide(color: Colors.white, width: 2), // Set app bar border
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100], // Set background color for body
          borderRadius: BorderRadius.circular(15), // Set border radius for body
        ),
        child: ListView.builder(
          itemCount: content.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 16.0), // Set margin for list tile
              decoration: BoxDecoration(
                color: Colors.white, // Set background color for list tile
                borderRadius: BorderRadius.circular(
                    10), // Set border radius for list tile
              ),
              child: ListTile(
                title: Text(
                  content[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // Add more widgets to display additional content details
              ),
            );
          },
        ),
      ),
    );
  }
}
