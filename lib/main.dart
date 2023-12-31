import 'package:flutter/material.dart';
import 'package:flutterrive/rive_app/on_boarding/signin_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Samples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInView(),
    );
  }
}
