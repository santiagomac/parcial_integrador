import 'package:flutter/material.dart';
import 'package:parcial_movil/screens/converter_screen.dart';
import 'package:parcial_movil/screens/weight_converter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Convertidor",
      theme: ThemeData(fontFamily: "encsans"),
      routes: {
        '/temperature': (context) => const ConverterScreen(),
        "/weight": (context) => const WeightConverterScreen(),
      },
      home: const WeightConverterScreen(),
    );
  }
}
