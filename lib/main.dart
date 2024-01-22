import 'package:flutter/material.dart';
import 'package:instagram_clones/screens/login_screen.dart';
import 'package:instagram_clones/utils/color_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: black),
      home: const LoginScreen(),
    );
  }
}
