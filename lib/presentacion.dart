import 'package:flutter/material.dart';
import 'perfil.dart';
import 'configuraciones.dart';  // Asegúrate de que esta importación esté presente para poder usar la página de configuraciones

class Presentacion extends StatelessWidget {
  const Presentacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presentación'),
        backgroundColor: const Color(0xFF6200EA),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Cabecera personalizada
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF3700B3), // Color más oscuro
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
                  // Usamos Flexible para evitar el desbordamiento
                  const Flexible(
                    child: Text(
                      'usuario@email.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis, // Agrega puntos suspensivos si el texto es largo
                    ),
                  ),
                ],
              ),
            ),
            // Opciones del menú
            ListTile(
              leading: const Icon(Icons.slideshow, color: Color(0xFF6200EA)), // Icono de presentación
              title: const Text('Presentación'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/presentacion');  // Ruta de la Presentación
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF6200EA)),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/perfil'); // Ruta para Perfil
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF6200EA)),
              title: const Text('Configuraciones'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/configuraciones'); // Ruta para Configuraciones
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Barra de navegación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo
                  Text(
                    'FOODies',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                  // Menú
                  Row(
                    children: [
                      _navItem('Home'),
                      _navItem('Hot Item'),
                      _navItem('Menus'),
                      _navItem('Contact us'),
                      _navItem('Join', isButton: true),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Presentación principal
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Texto
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome to\nThe world of\nTesty & Fresh Food.',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Keep it easy with these simple but delicious recipes '
                          'from make-ahead lunches and midweek meals to fuss-free sides.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Barra de búsqueda
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search, Burger',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 16),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Search',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Imagen
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/burger.jpg', // Cambiar por tu imagen
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(String text, {bool isButton = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: isButton
          ? ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(text),
            )
          : TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
