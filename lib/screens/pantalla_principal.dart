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
        leading: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset('assets/logo_kirbydoro.png'),
        ),
        title: Center(
          child: Image.asset(
            'assets/titulo_kirbydoro.png',
            height: 110,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/boton_usuario.png'), 
            iconSize: 10, 
            onPressed: () {
              Navigator.pushNamed(context, 'info');
            },
          ),
          const SizedBox(width: 10), 
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 108, 171),
                  ),
                  onPressed: () {
                    cambiarModo(25);
                  },
                  child: const Text(
                    'TRABAJO',
                    style: TextStyle(color: Colors.white, fontFamily: 'Kirby'),
                  ),
                ),
                const SizedBox(width: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 135, 166),
                  ),
                  onPressed: () {
                    cambiarModo(5);
                  },
                  child: const Text(
                    'BREAK',
                    style: TextStyle(color: Colors.white, fontFamily: 'Kirby'),
                  ),
                ),
                const SizedBox(width: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 220, 113, 193),
                  ),
                  onPressed: () {
                    cambiarModo(15);
                  },
                  child: const Text(
                    'DESCANSO',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Kirby',
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/tomate.png',
                  width: 400,
                  height: 400,
                  opacity: const AlwaysStoppedAnimation(0.8),
                ),
                Text(
                  obtenerTextoDelReloj(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontFamily: 'Kirby',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 223, 219, 219),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 239, 139, 169),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  onPressed: restarMinutos,
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(221, 255, 255, 255),
                      fontFamily: 'Kirby',
                    ),
                  ),
                ),

                const SizedBox(width: 30),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 249, 169, 213),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  onPressed: sumarMinutos,
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Kirby',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//amo ctrl + shift + f, tenia un desastre y me puso todo bello, que pro soy
