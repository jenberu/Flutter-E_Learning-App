import 'package:flutter/material.dart';
import 'grade_button.dart';
import 'course_tile.dart';
import 'about_us_page.dart';
//import 'about_us_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedGrade = '';

  Map<String, List<String>> coursesByGrade = {
    'Grade 9': [
      'grade 9 Mathimatics ',
      'grade 9 physics',
      'grade 9 English',
      ' grade 9 History',
      'grade 9 Geography',
      'grade 9 Biology',
      'grade 9 civics'
    ],
    'Grade 10': [
      'grade 10 Mathimatics ',
      'grade 10 Physics',
      'grade 10 Chemistry',
      'grade 10 Biology',
      'grade 10 Geography',
      'grade 10 civics'
    ],
    'Grade 11': [
      'grade 11 Mathimatics(for natural ) ',
      'grade 11 physics',
      'grade 11 English',
      ' grade 11 History',
      'grade 11 Geography',
      'grade 11 Biology',
      'grade 11 civics'
    ],
    'Grade 12': [
      'grade 12 Mathimatics( for natural) ',
      'grade 12 physics',
      'grade 12 English',
      ' grade 12 History',
      'grade 12 Geography',
      'grade 12 Biology',
      'grade 12 civics'
    ],
  };
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<String> courses = [];
    if (selectedGrade.isNotEmpty) {
      courses = coursesByGrade[selectedGrade] ?? [];
    }
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: Column(
          // Wrap the title and row in a Column
          children: [
            const Text(' secondary school learnig material !!!'),
            const SizedBox(height: 8), // Add some spacing between title and row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradeButton(
                    grade: 'Grade 9',
                    onPressed: () => setSelectedGrade('Grade 9')),
                GradeButton(
                    grade: 'Grade 10',
                    onPressed: () => setSelectedGrade('Grade 10')),
                GradeButton(
                    grade: 'Grade 11',
                    onPressed: () => setSelectedGrade('Grade 11')),
                GradeButton(
                    grade: 'Grade 12',
                    onPressed: () => setSelectedGrade('Grade 12')),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 158, 206, 245),
              ),
              child: Text('Menu'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate to home page
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUsPage()),
                );

                // Close the drawer
                // Navigate to about us page
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share with Friend'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Implement share functionality
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: selectedGrade.isEmpty
            ? const Center(child: Text('Select a grade'))
            : ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return CourseTile(
                    
                      courseName: courses[index], downloadIcon: Icons.download);
                },
              ),
      ),
      bottomNavigationBar: Container(
          height: 50,
          color: Colors.pink,
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "developing by jemberu kassie ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //give space between text
            Text("contact email jemberu0970@gmail.com "),
          ])),
    );
  }

  void setSelectedGrade(String grade) {
    setState(() {
      selectedGrade = grade;
    });
  }
}
