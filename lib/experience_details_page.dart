import 'package:flutter/material.dart';

class ExperienceDetailsPage extends StatelessWidget {
  const ExperienceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text("Experiences"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildExperienceItem(
              "Internship at CTG Info Tech  Company",
              "Software Development Intern",
              "June 2023 - August 2023",
              "Worked on developing web applications using Flutter and collaborated with a team to implement new features.",
            ),
            _buildExperienceItem(
              "Academic Project",
              "Student Project Leader",
              "January 2023 - May 2023",
              "Led a team to develop a mobile application for student management using Dart and Firebase.",
            ),
            _buildExperienceItem(
              "Freelance Projects",
              "Freelancer",
              "2022 - Present",
              "Completed various freelance projects, including website development and app creation for local businesses.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem(String title, String role, String duration, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(role, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            SizedBox(height: 4),
            Text(duration, style: TextStyle(fontSize: 14, color: Colors.grey)),
            SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
