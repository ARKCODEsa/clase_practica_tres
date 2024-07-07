import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario y Validación'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nombre'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese su nombre';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo Electrónico'),
              validator: (value) {
                if (value == null || !value.contains('@')) {
                  return 'Por favor ingrese un correo válido';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.length < 6) {
                  return 'La contraseña debe tener al menos 6 caracteres';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Procesar datos
                }
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}