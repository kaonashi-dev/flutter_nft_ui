import 'package:flutter/material.dart';

import 'package:flutter_nft_ui/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT APP',
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}