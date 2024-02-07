import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final VoidCallback onStartPressed;

  const PageOne({Key? key, required this.onStartPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/salud.png',
            width: 250,
            height: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            'Bienvenido a la App de Salud',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 20),
          
        ],
      ),
    );
  }
}
