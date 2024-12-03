import 'package:flutter/material.dart';

class ConfiguracionesPage extends StatefulWidget {
  const ConfiguracionesPage({Key? key}) : super(key: key);

  @override
  _ConfiguracionesPageState createState() => _ConfiguracionesPageState();
}

class _ConfiguracionesPageState extends State<ConfiguracionesPage> {
  bool _isNotificationsEnabled = true;
  bool _isDarkTheme = false;
  bool _isLocationEnabled = true;
  bool _isAutoLoginEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones'),
        backgroundColor: const Color(0xFF6200EA),  // Color morado en el AppBar
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),  // Color morado en la cabecera
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/goku.jpg'),
                  ),
                  const Text(
                    'Hola, Usuario!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'usuario@email.com',
                    style: TextStyle(
                      color: Color.fromARGB(179, 0, 0, 0),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.slideshow, color: Color(0xFF6200EA)),  // Color morado para el ícono
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
              'Ajustes Generales',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6200EA),  // Color morado para el texto
              ),
            ),
            const SizedBox(height: 20),
            _buildSwitchSetting(
              'Notificaciones',
              'Recibe notificaciones importantes.',
              _isNotificationsEnabled,
              (bool value) {
                setState(() {
                  _isNotificationsEnabled = value;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildSwitchSetting(
              'Modo Oscuro',
              'Activa el modo oscuro en la aplicación.',
              _isDarkTheme,
              (bool value) {
                setState(() {
                  _isDarkTheme = value;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildSwitchSetting(
              'Ubicación',
              'Permite el acceso a la ubicación para mejorar la experiencia.',
              _isLocationEnabled,
              (bool value) {
                setState(() {
                  _isLocationEnabled = value;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildSwitchSetting(
              'Inicio Automático',
              'Permite iniciar sesión automáticamente.',
              _isAutoLoginEnabled,
              (bool value) {
                setState(() {
                  _isAutoLoginEnabled = value;
                });
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Preferencias de Cuenta',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6200EA),  // Color morado para el texto
              ),
            ),
            const SizedBox(height: 20),
            _buildActionButton('Cambiar Contraseña', Icons.lock),
            const SizedBox(height: 20),
            _buildActionButton('Verificar Correo Electrónico', Icons.email),
            const SizedBox(height: 20),
            _buildActionButton('Eliminar Cuenta', Icons.delete, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchSetting(String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Color(0xFF6200EA),  // Color morado para el switch
        ),
      ),
    );
  }

  Widget _buildActionButton(String title, IconData icon, [Color color = Colors.blue]) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(title),
        leading: Icon(icon, color: color),
        onTap: () {
          // Aquí puedes agregar lógica para estas acciones
        },
      ),
    );
  }
}
