import 'package:flutter/material.dart';

class PersonalInfoDetailsPage extends StatelessWidget {
  const PersonalInfoDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        title: Text("Personal Info"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContactInfo(Icons.email, 'ferdous@gmail.com'),
            _buildContactInfo(Icons.person, 'Jannatul Ferdous (LinkedIn)'),
            _buildContactInfo(Icons.code, 'github.com/99JFGIT'),
            _buildContactInfo(Icons.phone, '+8801827687554'),
            _buildContactInfo(Icons.location_on, 'Chittagong, Bangladesh'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          SizedBox(width: 8),
          Text(info, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

