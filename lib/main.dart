import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHATSAPP CLONE',
      debugShowCheckedModeBanner: false,
      //app theme data
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // app frist screen
      home: const HomeScreen(),
    );
  }
}
