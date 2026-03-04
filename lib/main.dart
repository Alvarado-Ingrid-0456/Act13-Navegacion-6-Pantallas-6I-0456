import 'package:flutter/material.dart';
import 'widgets/pantalla_celular.dart';
import 'widgets/login.dart';
import 'widgets/inicio.dart';
import 'widgets/impresiones.dart';
import 'widgets/utiles.dart';

void main() {
  runApp(const MiCelular());
}

class MiCelular extends StatelessWidget {
  const MiCelular({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // La aplicación inicia en la pantalla del celular
      initialRoute: '/celular', 
      routes: {
        '/celular': (context) => const PantallaInicio(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/impresiones': (context) => const SubirArchivosScreen(),
        '/utiles': (context) => const UtilesPage(),
      },
    );
  }
}