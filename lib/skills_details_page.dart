import 'package:flutter/material.dart';

class SkillsDetailsPage extends StatelessWidget {
  const SkillsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of skills
    final skills = [
      {
        'skill': 'Programming Language',
        'details': 'PHP, C, C++, JavaScript, Phyton, Kotline.'
      },
      {
        'skill': 'Database Management ',
        'details': 'MySQL, MongoDB, Firebase.'
      },
      {
        'skill': 'Familiar with',
        'details': 'LARAVEL, HTML, CSS, Tailwind, Bootstrap, Node JS, React JS, Express JS.'
      },
      {
        'skill': 'Tools',
        'details': 'VS Code, PhpStorm, WebStorm, Android Studio, NetBeans, Oracle VM, Laragon.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text("Skills Details"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skills[index]['skill']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    skills[index]['details']!,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


