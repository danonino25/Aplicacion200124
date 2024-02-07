import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSettingOption(
              title: 'Derechos Reservados',
              content: '© 2024 Tu Empresa Médica. Todos los derechos reservados.',
              color: Colors.lightBlue,
            ),
            const SizedBox(height: 16),
            _buildSettingOption(
              title: 'Configuración de Fuente',
              content: 'Ajusta el tamaño de la fuente y otras configuraciones visuales.',
              color: Colors.lightBlue,
            ),
            const SizedBox(height: 16),
            _buildSettingOption(
              title: 'Notificaciones',
              content: 'Configura las notificaciones de la aplicación según tus preferencias.',
              color: Colors.lightBlue,
            ),
            const SizedBox(height: 16),
            _buildSettingOption(
              title: 'Ayuda',
              content: '¿Necesitas asistencia? Encuentra respuestas a tus preguntas y obtén ayuda.',
              color: Colors.lightBlue,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de Cerrar Sesión
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
              ),
              child: const Text('Cerrar Sesión'),
            ),
            const SizedBox(height: 16),
            _buildSettingOption(
              title: 'Ir a Nuestro Sitio Web',
              content: 'Visita nuestro sitio web para obtener más información y recursos.',
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingOption({required String title, required String content, required Color color}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.lightBlue),
        ),
        subtitle: Text(
          content,
          style: const TextStyle(fontSize: 16, color: Colors.lightBlue),
        ),
        onTap: () {
          // Acción al seleccionar una opción
        },
      ),
    );
  }
}

