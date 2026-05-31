import 'package:flutter/material.dart';
import '../screens/pantalla_principal.dart'; 
import '../screens/pantalla_infousuario.dart';

class AppRoutes {

  static const initialRoute = 'home';


  static Map<String, WidgetBuilder> getRoutes() {
    return {

      'home': (BuildContext context) => const PantallaPrincipal(),
      
      // Cuando alguien pida ir a 'info', Flutter dibujará la InfoScreen
      'info': (BuildContext context) => const PantallaInfousuario(),
    };
  }
}