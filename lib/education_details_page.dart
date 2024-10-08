import 'package:flutter/material.dart';

class EducationDetailsPage extends StatelessWidget {
  const EducationDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text("Education Details"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            elevation: 4,
            child: ListTile(
              title: Text("Bachelor of Science in Computer Science and Engineering"),
              subtitle: Text("International Islamic University Chittagong,                2018 - 2022"),
            ),
          ),
          Card(
            elevation: 4,
            child: ListTile(
              title: Text("Higher Secondary Certificate (H.S.C)"),
              subtitle: Text("Govt. City College, Chittagong, 2015 - 2017"),
            ),
          ),
          Card(
            elevation: 4,
            child: ListTile(
              title: Text("Secondary School Certificate (S.S.C)"),
              subtitle: Text("Jamalkhan Kusum Kumari City Corporation Girls HighSchool, 2015"),
            ),
          ),
        ],
      ),
    );
   }
  }
