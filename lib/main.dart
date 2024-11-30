import 'package:flutter/material.dart';
import 'presentacion.dart';  // Asegúrate de que esta importación esté siendo utilizada
import 'perfil.dart';
import 'configuraciones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Ruta inicial, puede ser '/presentacion'
      routes: {
        '/': (context) => const HomePage(),
        '/presentacion': (context) => const Presentacion(),
        '/perfil': (context) => const PerfilPage(),
        '/configuraciones': (context) => const ConfiguracionesPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Especialidades de Hamburguesas'),
        backgroundColor: const Color(0xFF6200EA),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF3700B3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/goku.jpg'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hola, Usuario!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'usuario@email.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.slideshow, color: Color(0xFF6200EA)),
              title: const Text('Presentación'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/presentacion');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF6200EA)),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/perfil');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF6200EA)),
              title: const Text('Configuraciones'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/configuraciones');
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Cerrar sesión'),
              onTap: () {
                // Lógica para cerrar sesión
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Título de la sección de especialidades
            const Text(
              '¡Nuestras Especialidades!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6200EA),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Tarjeta de hamburguesa especial
            _buildHamburgerCard('Hamburguesa Clásica', 'assets/hamburguesa_clasica.jpg', 'Hamburguesa con carne de res, queso, lechuga, tomate y mayonesa.'),
            const SizedBox(height: 20),
            _buildHamburgerCard('Hamburguesa BBQ', 'assets/hamburguesa_bbq.jpg', 'Hamburguesa con carne de res, cebolla caramelizada, queso cheddar, y salsa BBQ.'),
            const SizedBox(height: 20),
            _buildHamburgerCard('Hamburguesa Veggie', 'assets/hamburguesa_veggie.jpg', 'Hamburguesa vegetariana con garbanzos, lechuga, tomate y salsa especial.'),
            const SizedBox(height: 20),
            _buildHamburgerCard('Hamburguesa Deluxe', 'assets/hamburguesa_deluxe.jpg', 'Hamburguesa gourmet con carne de res, queso suizo, aguacate y cebolla morada.'),
          ],
        ),
      ),
    );
  }

  // Widget para construir cada tarjeta de hamburguesa
  Widget _buildHamburgerCard(String title, String imagePath, String description) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen de la hamburguesa
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Pantalla de Presentación
class PresentacionPage extends StatelessWidget {
  const PresentacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presentación'),
        backgroundColor: const Color(0xFF6200EA),
      ),
      body: const Center(
        child: Text('Página de Presentación'),
      ),
    );
  }
}
