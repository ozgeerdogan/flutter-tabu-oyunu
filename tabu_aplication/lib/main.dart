import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabu_aplication/models/words.data.dart';
import 'package:tabu_aplication/page/login_page.dart';

void main() {
  runApp(ChangeNotifierProvider<WordData>(
      create: (BuildContext context) => WordData(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
