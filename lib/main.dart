import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uilojadecomidas/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI de Compras de Mercado',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(context) => HomePage(),
      },
    );
  }
}
