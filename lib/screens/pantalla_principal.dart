import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});
  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int minutos = 25;

  void restarMinutos() {
    setState(() {
      if (minutos > 0) {
        minutos = minutos - 1;
      }
    });
  }

  void sumarMinutos() {
    setState(() {
      minutos = minutos + 1;
    });
  }

  void cambiarModo(int nuevoTiempo) {
    setState(() {
      minutos = nuevoTiempo;
    });
  }

  void resetearReloj() {
    setState(() {
      minutos = 0;
    });
  }

  String obtenerTextoDelReloj() {
    if (minutos < 10) {
      return '0$minutos:00';
    } else {
      return '$minutos:00';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color.fromARGB(255, 255, 213, 224),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        elevation: 10,
        title: Center(
          child: Image.asset(
            'assets/logo.png',
            height: 250,
            fit: BoxFit.contain,
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover, // Pa que llene toda la pantalla
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/kirby_trabajo.png', height: 90),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(238,223,53,141),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () => cambiarModo(25),
                        child: const Text(
                          'TRABAJO',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kirby',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/kirby_break.png', height: 100),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255,250,135,166,),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () => cambiarModo(5),
                        child: const Text(
                          'BREAK',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kirby',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/kirby_descando.png', height: 100),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255,220,113,193),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () => cambiarModo(15),
                        child: const Text(
                          'DESCANSO',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kirby',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/kirbytomate.png',
                    width: 400,
                    height: 400,
                  ),
                  Text(
                    obtenerTextoDelReloj(),
                    style: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'Kirby',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {}, // no hace nada
                    child: Image.asset('assets/boton_inicio.png', width: 130),
                  ),

                  const SizedBox(width: 10),

                  GestureDetector(
                    onTap: resetearReloj,
                    child: Image.asset('assets/boton_reset.png', width: 130),
                  ),
                  const SizedBox(width: 10),

                  GestureDetector(
                    onTap: () {}, //no hace nada
                    child: Image.asset('assets/boton_pausa.png', width: 130),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 140,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 213, 224),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 168, 77, 104),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(35),
              ),
              onPressed: restarMinutos,
              child: const Text(
                '-',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Kirby',
                ),
              ),
            ),

            Column(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/boton_usuario.png',
                    width: 95,
                    height: 95,
                  ),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pushNamed(context, 'info');
                  },
                ),
                const Text(
                  'USUARIO',
                  style: TextStyle(
                    fontFamily: 'Kirby',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 223, 53, 110),
                  ),
                ),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 134, 164),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(35),
              ),
              onPressed: sumarMinutos,
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Kirby',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
