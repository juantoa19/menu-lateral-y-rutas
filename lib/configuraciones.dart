import 'package:flutter/material.dart';
import 'presentacion.dart';  // Importa la pantalla de Presentacion

class ConfiguracionesPage extends StatefulWidget {
  const ConfiguracionesPage({Key? key}) : super(key: key);

  @override
  _ConfiguracionesPageState createState() => _ConfiguracionesPageState();
}

class _ConfiguracionesPageState extends State<ConfiguracionesPage> {
  bool _notificationsEnabled = true;  // Estado para las notificaciones
  bool _darkModeEnabled = false;      // Estado para el modo oscuro

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones'),
        backgroundColor: Colors.teal,
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
            // Opciones del menú
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF6200EA)),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/inicio');
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
              leading: const Icon(Icons.slideshow, color: Color(0xFF6200EA)), // Cambiar el ícono
              title: const Text('Presentación'),  // Título de la opción
              onTap: () {
                Navigator.pushReplacementNamed(context, '/presentacion'); // Ruta para la Presentación
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Opción para habilitar/deshabilitar notificaciones
            SwitchListTile(
              title: const Text('Notificaciones'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
              secondary: const Icon(Icons.notifications),
            ),
            const Divider(),
            // Opción para cambiar a modo oscuro
            SwitchListTile(
              title: const Text('Modo oscuro'),
              value: _darkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
              secondary: const Icon(Icons.brightness_6),
            ),
            const Divider(),
            // Opción para cambiar la contraseña
            ListTile(
              title: const Text('Cambiar contraseña'),
              leading: const Icon(Icons.lock),
              onTap: () {
                // Lógica para cambiar la contraseña
              },
            ),
            const Divider(),
            // Opción para cerrar sesión
            ListTile(
              title: const Text('Cerrar sesión'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                // Lógica para cerrar sesión
              },
            ),
          ],
        ),
      ),
    );
  }
}
