import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final String cometaImg = "https://cdn-icons-png.flaticon.com/512/3212/3212608.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("INICIA SESIÓN Ingrid Alvarado", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.purple), textAlign: TextAlign.center),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Correo electrónico",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () => Navigator.pushNamed(context, "/home"), // Va al Inicio de la papelería
                child: const Text("Iniciar Sesión", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10),
              const Text("¿No tienes cuenta? Regístrate", style: TextStyle(color: Colors.purple)),
              const SizedBox(height: 20),
              Image.network(cometaImg, height: 150),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[900]),
                  onPressed: () => Navigator.pushNamed(context, "/home"),
                  child: const Text("Iniciar Sesión como Admin", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}