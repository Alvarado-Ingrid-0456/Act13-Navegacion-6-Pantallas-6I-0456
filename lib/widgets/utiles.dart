import 'package:flutter/material.dart';

class UtilesPage extends StatelessWidget {
  const UtilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        "nombre": "Lápiz",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/lapiz.png"
      },
      {
        "nombre": "Juego Geometrico",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/juegoG.png"
      },
      {
        "nombre": "Plumas",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/plumas.png"
      },
      {
        "nombre": "Borrador",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/borrador.png"
      },
      {
        "nombre": "Sacapuntas",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/sacapuntas.png"
      },
      {
        "nombre": "Marcadores",
        "url": "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/crayola.png"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://raw.githubusercontent.com/Alvarado-Ingrid-0456/Imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/logo.jpg",
              height: 40,
            ),
            const SizedBox(width: 8),
            const Text(
              "Papelería Cometa",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      
      // --- MENÚ DE HAMBURGUESA (DRAWER) ---
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[900]),
              child: const Text(
                'Menú Cometa',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone_android),
              title: const Text('Pantalla Celular'),
              onTap: () => Navigator.pushNamed(context, '/celular'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio App'),
              onTap: () => Navigator.pushNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.print),
              title: const Text('Impresiones'),
              onTap: () => Navigator.pushNamed(context, '/impresiones'),
            ),
          ],
        ),
      ),

      // --- BARRA DE NAVEGACIÓN INFERIOR ---
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: "Celular", // Te lleva a la Pantalla de Inicio (Celular)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Regresar", // Regresa a la pantalla anterior
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Navega a la pantalla del celular (primera pantalla)
            Navigator.pushNamed(context, '/celular');
          } else if (index == 1) {
            // Regresa a la pantalla anterior
            Navigator.pop(context);
          }
        },
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("ÚTILES",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple)),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                        child: Image.network(items[index]["url"]!,
                            fit: BoxFit.cover)),
                    const SizedBox(height: 5),
                    Text(items[index]["nombre"]!,
                        style: const TextStyle(color: Colors.deepPurple)),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}