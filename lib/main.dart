import 'package:flutter/material.dart';
import 'main_menu.dart'; // Asegúrese de que el nombre del archivo y la ruta sean correctos

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainMenu(), // Cambiado a MainMenu
    );
  }
}