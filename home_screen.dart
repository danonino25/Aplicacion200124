// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';
import 'page_four.dart';
import 'page_five.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Método para construir la lista de pantallas
  List<Widget> _buildScreens() {
    return <Widget>[
      PageOne(
        onStartPressed: () {
          // Navegar a la página de Cita Médica (PageTwo)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PageTwo()),
          );
        },
      ),
      const PageTwo(),
      const PageThree(),
      const PageFour(),
      const PageFive(),
    ];
  }

  void _navigateToScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

 @override
  Widget build(BuildContext context) {
    // Usar el método _buildScreens() para construir la lista de pantallas
	    List<Widget> screens = _buildScreens();	
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
	      bottomNavigationBar: BottomNavigationBar(	        
          backgroundColor: const Color.fromARGB(255, 248, 244, 21),	      
            items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
           icon: Icon(Icons.home),
          label: 'Inicio',
        ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Cita Médica',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Información',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _navigateToScreen,
      ),
    );
  }
}