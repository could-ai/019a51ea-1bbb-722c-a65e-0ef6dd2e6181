import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/about_screen.dart';
import 'package:couldai_user_app/screens/newborn_care_screen.dart';
import 'package:couldai_user_app/screens/remedies_screen.dart';
import 'package:couldai_user_app/screens/resources_screen.dart';
import 'package:couldai_user_app/screens/sessions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maternal & Newborn Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/newborn-care': (context) => const NewbornCareScreen(),
        '/remedies': (context) => const RemediesScreen(),
        '/resources': (context) => const ResourcesScreen(),
        '/sessions': (context) => const SessionsScreen(),
      },
    );
  }
}
