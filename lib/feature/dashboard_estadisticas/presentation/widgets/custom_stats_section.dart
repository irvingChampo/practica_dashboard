import 'package:flutter/material.dart';

class CustomActionsSection extends StatelessWidget {
  const CustomActionsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Reporte')),
        const Spacer(),
        ElevatedButton(onPressed: () {}, child: const Text('Analizar')),
        const Spacer(),
        ElevatedButton(onPressed: () {}, child: const Text('Ajustes')),
      ],
    );
  }
}
