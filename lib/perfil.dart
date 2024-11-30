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
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const HomePage(),
        '/presentacion': (context) => const PresentacionPage(),
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

  Widget _buildHamburgerCard(String title, String imagePath, String description) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  String name = 'Juan Pérez';
  String email = 'juan.perez@email.com';
  String bio = 'Soy un amante de la comida, la tecnología y la programación. Me encanta probar nuevas recetas y siempre busco maneras de innovar en la cocina.';
  String phone = '123-456-7890';
  String address = 'Calle Ficticia 123, Ciudad, País';
  DateTime birthDate = DateTime(1990, 1, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.teal,
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/goku.jpg'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    color: Colors.teal,
                  ),
                  _buildInfoRow(Icons.info, 'Bio', bio),
                  _buildInfoRow(Icons.phone, 'Teléfono', phone),
                  _buildInfoRow(Icons.home, 'Dirección', address),
                  _buildInfoRow(Icons.cake, 'Fecha de nacimiento', birthDate.toLocal().toString().split(' ')[0]),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Lógica para editar perfil
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text('Editar perfil'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '$label: $value',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
