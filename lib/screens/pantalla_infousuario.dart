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

      // 6. El cuerpo (body) de la pantalla. Usamos Center para asegurar que tu tarjeta quede en el medio exacto.
      body: Center(
        // 7. Padding envuelve a la tarjeta para darle un margen. Así evitamos que los bordes 
        // de la tarjeta choquen feo contra los bordes físicos de la pantalla del celular.
        child: Padding(
          padding: const EdgeInsets.all(20.0), // 20 píxeles de margen en los cuatro lados
          
          // 8. El Widget Card crea un contenedor con bordes naturales y una sombra. Es el estándar para perfiles.
          child: Card(
            // "elevation" proyecta una sombra debajo de la tarjeta para darle un efecto 3D de profundidad.
            elevation: 8,
            // Pintamos el fondo de la tarjeta de blanco para que resalte sobre el fondo rosado del Scaffold.
            color: Colors.white,
            // "shape" nos permite redondear los bordes de la tarjeta para mantener una estética amigable.
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            
            // 9. Otro Padding, pero este es interno. Evita que el texto y las fotos se peguen a los bordes blancos de la tarjeta.
            child: Padding(
              padding: const EdgeInsets.all(30.0), // 30 píxeles de aire por dentro
              
              // 10. Usamos Column para apilar los elementos de tu perfil de arriba hacia abajo (Foto -> Nombre -> Bio).
              child: Column(
                // mainAxisSize.min le dice a la columna: "Ocupa solo el espacio de tus hijos, no te estires por toda la pantalla".
                mainAxisSize: MainAxisSize.min, 
                children: [
                  
                  // 11. CircleAvatar es el widget nativo ideal para mostrar fotos de perfil redondas.
                  const CircleAvatar(
                    radius: 50, // Radio de 50 píxeles (tamaño total de 100x100)
                    backgroundColor: Color(0xFFFF69B4), // Fondo rosado fuerte
                    // Por ahora ponemos un ícono de computadora, luego lo podemos cambiar por tu foto o un Kirby.
                    child: Icon(Icons.computer, size: 50, color: Colors.white),
                  ),
                  
                  const SizedBox(height: 20), // Salto de línea vacío de 20 píxeles
                  
                  // 12. Tu nombre como desarrolladora del software.
                  const Text(
                    'Grisangely María',
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 10), // Pequeño salto de línea
                  
                  // 13. Tu rol profesional y académico.
                  const Text(
                    'Estudiante de Ingeniería de Sistemas',
                    textAlign: TextAlign.center, // Centramos el texto
                    style: TextStyle(
                      fontSize: 16, 
                      color: Colors.black54, 
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  const SizedBox(height: 20), 
                  
                  // 14. Divider crea una elegante línea horizontal para separar los títulos de tu biografía.
                  const Divider(color: Color(0xFFFFB6C1), thickness: 2),
                  
                  const SizedBox(height: 15), 
                  
                  // 15. Tu descripción del proyecto (¡Tomada prestada de tu README!).
                  const Text(
                    'Creadora de KirbyDoro 🍅\n\nUna app diseñada para enfocarse y replantearse la existencia y la inmortalidad del cangrejo.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14, 
                      fontStyle: FontStyle.italic, // Letra cursiva
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}