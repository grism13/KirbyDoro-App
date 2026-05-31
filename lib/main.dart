import 'package:flutter/material.dart';
import 'package:primera_app/rutas/app_rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta fea de "Debug" arriba a la derecha
      title: 'KirbyDoro App',
      
      // Le decimos a Flutter: "Oye, tu ruta inicial y tu mapa están en la clase AppRoutes"
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}