import 'package:flutter/material.dart';
import 'UI/quote.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuotesApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}


