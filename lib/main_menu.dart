import 'package:flutter/material.dart';
import 'form_screen.dart'; // Asumiendo que este archivo contiene la actividad de formulario
import 'gesture_detector_screen.dart'; // Asumiendo que este archivo contiene la actividad de GestureDetector

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Formulario y Validación'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Detector de Gestos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GestureDetectorScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}