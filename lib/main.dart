import 'package:adhan/view/screens/home/home_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Azon Vaqtlari',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePageView(),
    );
  }
}
