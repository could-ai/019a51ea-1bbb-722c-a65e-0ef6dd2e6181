import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Our Mission'),
         backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Mission',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Our team aims to improve the knowledge and availability of safe yet cheap healthcare solutions among lower- income communities by introducing and encouraging daily sustainable healthcare practices among our target audience.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'The Team',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Mishka Doshi\n'
              '• Samairra Manji\n'
              '• Krisha Sanghvi\n'
              '• Aarav Shah\n'
              '• Taher Plumber\n'
              '• Paarth Gangaramani',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
             SizedBox(height: 24),
            Text(
              'Project Background',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'In many rural areas of Mumbai, mothers lack the awareness of essential newborn care. We believe with the help of more access to information and resources we can greatly resolve the issue. In 2021, a UNICEF report claimed that over 5 million children were victims of several diseases due to the absence of adequate hygiene. Our goal is to provide essential resources through kits and awareness sessions, teaching affordable remedies, breastfeeding practices, and nutritional support.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
