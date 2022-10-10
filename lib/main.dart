import 'package:flutter/material.dart';
import 'package:cream/Image/Image.dart';
import 'package:cream/Login/sing_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Image_Home(),
        '/sing-in': (context) => const Sing_in(),
      },
    );
  }
}
