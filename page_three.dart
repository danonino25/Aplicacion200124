import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del Centro Médico'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInfoCard(
                icon: Icons.local_hospital,
                title: 'Servicios',
                content: 'Ofrecemos servicios médicos de calidad, incluyendo consultas generales, especialidades, laboratorio, y más.',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.phone,
                title: 'Números de Teléfono',
                content: 'Línea de atención general: +52 123 456 7890\nEmergencias: 911',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.email,
                title: 'Correo Electrónico',
                content: 'Envía tus consultas a info@centromedico.com\nSoporte técnico: soporte@centromedico.com',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.location_on,
                title: 'Centros de Atención',
                content: 'Encuéntranos en Ciudad de México, Monterrey, Guadalajara y otras ubicaciones en todo México.',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.language,
                title: 'Sitios Web y Redes Sociales',
                content: 'Visita nuestro sitio web: www.centromedico.com\nSíguenos en Facebook, Twitter e Instagram: @CentroMedicoMX',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.access_time,
                title: 'Horarios de Servicio',
                content: 'Estamos disponibles de lunes a viernes de 8:00 AM a 6:00 PM\nSábados y domingos de 9:00 AM a 2:00 PM.',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.chat,
                title: 'Chat de WhatsApp',
                content: 'Conéctate con nosotros a través de WhatsApp para consultas rápidas: +52 123 456 7890',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({required IconData icon, required String title, required String content}) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            content,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
