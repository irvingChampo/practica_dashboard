import 'package:flutter/material.dart';
import 'package:dashboard_estadisticas/feature/dashboard_estadisticas/presentation/widgets/custom_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Dashboard de Estadísticas'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return const Row(
                        children: [
                          Expanded(flex: 5, child: CustomCard(title: 'Ventas Totales', value: '50%'),), SizedBox(width: 16),
                          Expanded(flex: 3, child: CustomCard(title: 'Nuevos Usuarios', value: '30%'),), SizedBox(width: 16),
                          Expanded(flex: 2, child: CustomCard(title: 'Tasa de Rebote', value: '20%'),),
                        ],
                      );
                    } else {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomCard(title: 'Ventas Totales', value: '50%'),
                          CustomCard(title: 'Nuevos Usuarios', value: '30%'),
                          CustomCard(title: 'Tasa de Rebote', value: '20%'),
                        ],
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Reporte')),
                  const Spacer(),
                  ElevatedButton(onPressed: () {}, child: const Text('Analizar')),
                  const Spacer(),
                  ElevatedButton(onPressed: () {}, child: const Text('Ajustes')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}