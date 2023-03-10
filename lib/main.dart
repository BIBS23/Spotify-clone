import 'package:flutter/material.dart';
import 'package:spotify/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'spotify',
      darkTheme: ThemeData.dark(),
      home: const Scaffold(
        body: Home(),
      ),
    
    );
  }
}
