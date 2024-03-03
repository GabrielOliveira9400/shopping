import 'package:flutter/material.dart';
import 'package:shopping/Pages/tabs.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Ytex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DefaultTabController(
      length: 3,
      child: TabsPage(),
      ),
    );
  }
}
