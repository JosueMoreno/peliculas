import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
          elevation: 0,
        ),
      ),
    );
  }
}
