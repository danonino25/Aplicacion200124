import 'package:flutter/material.dart';

class    PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.phone,
                title: 'Número de Teléfono',
                content: '+52 123 456 7890',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.email,
                title: 'Correo Electrónico',
                content: 'usuario@example.com',
              ),
              const SizedBox(height: 16),
              _buildInfoCard(
                icon: Icons.security,
                title: 'Número de Seguro Social',
                content: '123-456-789',
              ),
              const SizedBox(height: 16),
              _buildServicesCard(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Editar Perfil'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return const Column(
      children: [
        CircleAvatar(
          radius: 50,
        ),
        SizedBox(height: 16),
        Text(
          'Ana María Barrientos Guerrero',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
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

  Widget _buildServicesCard() {
    return const Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Servicios Utilizados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            
            ListTile(
              title: Text('Consulta General'),
              subtitle: Text('Fecha: 01/01/2023'),
            ),
            ListTile(
              title: Text('Análisis de Laboratorio'),
              subtitle: Text('Fecha: 02/01/2023'),
            ),
          ],
        ),
      ),
    );
  }
}
