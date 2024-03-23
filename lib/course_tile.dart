import 'package:flutter/material.dart';
import 'CourseContentPage.dart';

class CourseTile extends StatelessWidget {
  final String courseName;
  final IconData downloadIcon;

  const CourseTile({
    Key? key,
    required this.courseName,
    required this.downloadIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> courseImages = {
      'grade 10 physics': 'assets/g10py.jpg',
      'grade 10 English': 'assets/g10en.jpg',
      'grade 10 chemistry': 'assets/g10ch.jpg',
      'grade 10 Geography': 'assets/g10ge.jpg',
      'grade 10 Biology': 'assets/g10bi.jpg',
      'grade 10 civics': 'assets/g10ci.png',
      'grade 10 Mathimatics':
          'assets/g10m.jpg' // Example URL for English course image
      // Add more course names and image URLs or asset paths here
    };

    String imageUrl = courseImages.containsKey(courseName)
        ? courseImages[courseName]!
        : 'assets/defualt.jpg';

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0), // Adjust margin as needed
      padding: EdgeInsets.all(8.0), // Adjust padding as needed
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Set border color here
          width: 1.0, // Set border width here
        ),
        borderRadius: BorderRadius.circular(8.0), // Set border radius here
      ),
      child: ListTile(
        hoverColor: Colors.pink,
        leading: Image.network(
          imageUrl,
          width: 100, // Adjust the width as needed
          height: 48, // Adjust the height as needed
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
        title: Text(
          courseName,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          tooltip: "download",
          icon: Icon(downloadIcon),
          onPressed: () {
            // Handle download button press
          },
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseContentPage(courseName: courseName),
            ),
          );
          // Handle course selection
        },
      ),
    );
  }
}
