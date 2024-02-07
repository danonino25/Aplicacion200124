import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _currentStep = 0;

  DateTime _selectedDate = DateTime.now();
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[200],
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            _buildStepIndicator(),
            const SizedBox(height: 20),
            _buildStepContent(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_currentStep < 3) {
                  setState(() {
                    _currentStep++;
                  });
                } else {
                  // Lógica para guardar la cita o realizar alguna acción
                }
              },
              child: const Text('Siguiente'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(4, (index) {
        return Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentStep >= index ? Colors.blue : Colors.grey,
            border: Border.all(color: Colors.blue, width: 2),
          ),
          child: _currentStep == index
              ? const Center(
                  child: Text(
                    '✓',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : null,
        );
      }),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return _buildStepOne();
      case 1:
        return _buildStepTwo();
      case 2:
        return _buildStepThree();
      case 3:
        return _buildStepFour();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildStepOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Paso 1: Seleccionar Fecha y Hora',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        // Calendario para seleccionar la fecha
        TableCalendar(
          firstDay: DateTime.now(),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          focusedDay: _selectedDate,
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDate = selectedDay;
            });
          },
        ),
        const SizedBox(height: 20),
        // Botón para seleccionar la hora
        ElevatedButton(
          onPressed: () async {
            _selectedTime = await showTimePicker(
              context: context,
              initialTime: _selectedTime ?? TimeOfDay.now(),
            );

            setState(() {});
          },
          child: const Text('Seleccionar Hora'),
        ),
        const SizedBox(height: 10),
        // Mostrar la hora seleccionada
        if (_selectedTime != null)
          Text('Hora seleccionada: ${_selectedTime!.format(context)}'),
      ],
    );
  }

  Widget _buildStepTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Paso 2: Llenar Información Personal',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        // Agregar un formulario para información personal
        TextFormField(
          decoration: const InputDecoration(labelText: 'Nombre'),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Apellido'),
        ),
        const SizedBox(height: 10),
        // Otros campos según tus necesidades
      ],
    );
  }

  Widget _buildStepThree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Paso 3: Subir Documentos',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        // Agregar cajas para subir archivos
        ElevatedButton(
          onPressed: () {
            // Lógica para subir documentos
          },
          child: const Text('Subir Curp'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Lógica para subir documentos
          },
          child: const Text('Subir INE'),
        ),
        // Puedes agregar más botones según tus necesidades
      ],
    );
  }

  Widget _buildStepFour() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Paso 4: Confirmar y Agendar',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        // Mostrar un resumen y un botón para confirmar la cita
        // También puedes mostrar el calendario aquí
        ElevatedButton(
          onPressed: () {
            // Lógica para confirmar y agendar la cita
          },
          child: const Text('Confirmar Cita'),
        ),
      ],
    );
  }
}
