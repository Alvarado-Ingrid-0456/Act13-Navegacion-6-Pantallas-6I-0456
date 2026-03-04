import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  final String fondoUrl = "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/fondo.jpg";
  final String logoCometaUrl = "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/logo.jpg";

  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double tamanoIcono = ancho > 600 ? 50 : 35;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(fondoUrl), fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.nightlight_round, color: Colors.white, size: tamanoIcono),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("7°", style: TextStyle(color: Colors.white, fontSize: 22)),
                                    Text("Nublado", style: TextStyle(color: Colors.white70)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        iconoApp(Icons.shop, "Play Store", tamanoIcono),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconoApp(Icons.photo, "Galería", tamanoIcono),
                        iconoApp(Icons.calendar_month, "Calendario", tamanoIcono),
                        iconoApp(Icons.settings, "Ajustes", tamanoIcono),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconoApp(Icons.access_time, "Reloj", tamanoIcono),
                        iconoApp(Icons.image_search, "Pinterest", tamanoIcono),
                        iconoApp(Icons.sports_esports, "Play Juegos", tamanoIcono),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconoApp(Icons.shopping_cart, "Amazon", tamanoIcono),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/login'), // Navega al Login
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(logoCometaUrl, height: tamanoIcono + 10, width: tamanoIcono + 10, fit: BoxFit.cover),
                              ),
                              const SizedBox(height: 5),
                              const Text("Papelería Cometa", style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconoApp(IconData icono, String nombre, double tamano) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(15)),
          child: Icon(icono, size: tamano, color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(nombre, style: const TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center),
      ],
    );
  }
}