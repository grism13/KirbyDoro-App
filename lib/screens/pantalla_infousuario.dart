// 1. Importamos la librería de Material Design para acceder a los widgets visuales (Scaffold, Card, Text).
import 'package:flutter/material.dart';

class PantallaInfousuario extends StatelessWidget {
  const PantallaInfousuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 193, 213), 
      
      appBar: AppBar(

        title: const Text('INFORMACION DE LA DESARROLLADORA JEFA',
         style: TextStyle(
          fontFamily: 'Kirby',
          fontSize: 30, 
          color: Color.fromARGB(255, 255, 255, 255)
         )),

         //aqui simplemente voy a pegar el estilo la barra q ya tenia de la pantalla principal
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        elevation: 20,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 214, 151, 199),
                Color.fromARGB(255, 247, 162, 185),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight, 
           ),
          ),
        ),
      ),
    
  cuerpo (body) de la pantalla. Usamos Center para asegurar que tu tarjeta quede en el medio exacto.
