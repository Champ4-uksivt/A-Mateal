import 'package:a_matual/presentation/pages/Sign%20in.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const DetailsPage(id: '01934e25-ee0e-7c87-8271-0a7f5ddcf04c',),
      home: const Sign_in_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}