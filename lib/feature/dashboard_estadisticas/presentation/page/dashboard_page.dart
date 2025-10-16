import 'package:flutter/material.dart';
import 'package:dashboard_estadisticas/feature/dashboard_estadisticas/presentation/widgets/custom_actions_section.dart';
import 'package:dashboard_estadisticas/feature/dashboard_estadisticas/presentation/widgets/custom_stats_section.dart';

/// La página principal que, al igual que tu ejemplo, solo organiza los widgets principales.
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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: CustomStatsSection(),
              ),
              SizedBox(height: 16),
              CustomActionsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
