import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWTimepickerExample extends StatelessWidget {
  const VWTimepickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VW Components'),
      ),
      body: SingleChildScrollView(
        child: VWColumn(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            VWTimePicker(
              cancelText: "Cancelar",
              confirmText: "Confirmar",
              errorInvalidText: "Formato de hora inválido",
              hourLabelText: "Hora",
              minuteLabelText: "Minuto",
              helpText: "Selecione a hora",
              onChanged: (TimeOfDay value) {
                debugPrint("Time selected: $value");
              },
              decoration: const InputDecoration(
                labelText: 'Select time',
                suffixIcon: Icon(Icons.access_time),
              ),
            ),

            //example with initial date
            VWTimePicker(
              cancelText: "Cancelar",
              confirmText: "Confirmar",
              errorInvalidText: "Formato de hora inválido",
              hourLabelText: "Hora",
              minuteLabelText: "Minuto",
              helpText: "Selecione a hora",
              onChanged: (TimeOfDay value) {
                debugPrint("Time selected: $value");
              },
              initialValue: TimeOfDay.now(),
              decoration: const InputDecoration(
                labelText: 'Select time',
                suffixIcon: Icon(Icons.access_time),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
