import 'package:flutter/material.dart';
import 'package:vp12_bio_ap/screens/bio_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BioScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
