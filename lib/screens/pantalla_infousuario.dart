import 'package:flutter/material.dart';

class PantallaInfousuario extends StatelessWidget {
  const PantallaInfousuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 179, 196),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 213, 224),

        toolbarHeight: 110,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        elevation: 40,
      ),

      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 8,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          clipBehavior: Clip
                              .none, // Permite que la imagen se salga del borde sin cortarse (esto me dio mucho estres, creditos a la retroalimentacion de la IA🫡)
                          children: [
                            const CircleAvatar(
                              radius: 80,
                              backgroundColor: Color(0xFFFF69B4),
                              backgroundImage: AssetImage(
                                'assets/desarrolladora.png',
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: -25,
                              child: Image.asset(
                                'assets/kirby_comelon.png',
                                width: 92,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 241, 127, 159),
                          thickness: 2,
                        ),
                        const SizedBox(height: 2),

                        const Text(
                          'GRISANGELY MARTINEZ',
                          style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Kirby',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 216, 95, 129),
                          ),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 241, 127, 159),
                          thickness: 2,
                        ),

                        const SizedBox(height: 1),

                        const Text(
                          'ALIAS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 132, 18, 94),
                          ),
                        ),
                        const Text(
                          'Gris',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                        const Text(
                          'ESTUDIO',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 218, 56, 132),
                          ),
                        ),
                        const Text(
                          'Ingenieria de Sistemas',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                        const Text(
                          'COLOR FAV',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 218, 56, 132),
                          ),
                        ),
                        const Text(
                          'Depende del estado de animo',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                        const Text(
                          'ACTIVIDAD FAV',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 218, 56, 132),
                          ),
                        ),
                        const Text(
                          'Replantearme mi existencia y\nodiar a todos',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                        const Text(
                          'ME IDENTIFICO COMO',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 218, 56, 132),
                          ),
                        ),
                        const Text(
                          'Un ser de luz y cosas positivas',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),
                        const Text(
                          'COSAS FAV',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 218, 56, 132),
                          ),
                        ),
                        const Text(
                          'El chisme, Las plantas, los flips\nde dulce de leche, la musica de\njuan luis guerra',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        ),

                        const SizedBox(height: 5),

                        const Divider(color: Color(0xFFFFB6C1), thickness: 2),



                        const Text(
                          'CREADORA DE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Kirby',
                            color: Color.fromARGB(255, 223, 53, 141),
                          ),
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 610,
            right: 15,
            left: 5,
            child: Image.asset('assets/logo.png', height: 210),
          ),

          Positioned(
            top: 20,
            right: -5,
            child: Image.asset('assets/kirby_infladito.png', width: 120),
          ),

          Positioned(
            bottom: 20,
            left: 5,
            child: Image.asset('assets/kirby_paraguas.png', width: 150),
          ),
        ],
      ),
    );
  }
}
