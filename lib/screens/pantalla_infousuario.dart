import 'package:flutter/material.dart';

class PantallaInfousuario extends StatelessWidget {
  const PantallaInfousuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 193, 213), 
      
      appBar: AppBar(

        title: const Text('INFORMACION DE LA DESARROLLADORA',
         style: TextStyle(
          fontFamily: 'Kirby',
          fontSize: 15, 
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
    body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), 
          
          child: Card(
            elevation: 8,

            color: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            
            child: Padding(
              padding: const EdgeInsets.all(30.0), 
              
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  
                  const CircleAvatar(
                    radius: 110, 
                    backgroundColor: Color(0xFFFF69B4), 
                    backgroundImage:AssetImage('assets/desarrolladora.png')
                  ),
                  
                  const SizedBox(height: 20),
                  

                  const Text(
                    'GRISANGELY MARTINEZ',
                    style: TextStyle(
                      fontSize: 26, 
                      fontFamily: 'Kirby', 
                      color: Color.fromARGB(221, 242, 139, 139),
                    ),
                  ),
                  
                  const SizedBox(height: 5), 
                  
                  const Text(
                    'ALIAS: Gris', 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(161, 0, 0, 0), 
                      fontFamily: 'Kirby',
                    ),
                  ),
                  const Text(
                    'ESTUDIO: Ingenieria de Sistemas',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(173, 0, 0, 0), 
                      fontFamily: 'Kirby',
                    ),
                  ),

                  const Text(
                    'COLOR FAVORITO: Depende del estado de animo',
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(166, 0, 0, 0), 
                      fontFamily: 'Kirby',
                    ),
                  ),

                  const Text(
                    'ACTIVIDAD FAVORITA: Replantearme mi existencia y odiar a todos',
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(189, 0, 0, 0), 
                      fontFamily: 'Kirby',
                    ),
                  ),

                  const Text(
                    'ME IDENTIFICO COMO: Un ser de luz y cosas positivas',
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(168, 0, 0, 0), 
                      fontFamily: 'Kirby',
                    ),
                  ),

                  const Text(
                    'COSAS FAVORITAS: El chisme, Las plantas, los flips de dulce de leche, la musica de juan luis guerra y franco de vita',
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(171, 0, 0, 0), 
                      fontFamily: 'Kirby',
                      
                    ),
                  ),

                  const SizedBox(height: 20), 
                  

                  const Divider(color: Color(0xFFFFB6C1), thickness: 3),
                  
                  const SizedBox(height: 15), 
                  
                  

                  const Text(
                    'CREADORA DE KIRBYDORO\n\nUna app diseñada para gestionar tu tiempo en las tareas y no perder el enfoque a lo autista',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17, 
                      fontFamily: 'Kirby', 
                      color: Color.fromARGB(164, 255, 83, 146),
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


