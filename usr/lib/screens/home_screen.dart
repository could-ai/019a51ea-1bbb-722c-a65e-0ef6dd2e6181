import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/home_menu_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maternal & Newborn Care'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.health_and_safety,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Welcome!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your guide to a healthy journey for you and your newborn.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  HomeMenuCard(
                    title: 'Essential Newborn Care',
                    icon: Icons.child_care,
                    onTap: () => Navigator.pushNamed(context, '/newborn-care'),
                  ),
                  HomeMenuCard(
                    title: 'Affordable Remedies',
                    icon: Icons.healing,
                    onTap: () => Navigator.pushNamed(context, '/remedies'),
                  ),
                  HomeMenuCard(
                    title: 'Find Help & Resources',
                    icon: Icons.local_hospital,
                    onTap: () => Navigator.pushNamed(context, '/resources'),
                  ),
                  HomeMenuCard(
                    title: 'Awareness Sessions',
                    icon: Icons.campaign,
                    onTap: () => Navigator.pushNamed(context, '/sessions'),
                  ),
                  HomeMenuCard(
                    title: 'About Our Mission',
                    icon: Icons.info_outline,
                    onTap: () => Navigator.pushNamed(context, '/about'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
