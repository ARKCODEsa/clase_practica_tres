import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detector de Gestos'),
      ),
      body: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tocado')));
        },
        onHorizontalDragEnd: (details) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Deslizamiento horizontal')));
        },
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(child: Text('Desliza o Toca')),
          ),
        ),
      ),
    );
  }
}