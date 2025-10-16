import 'package:flutter/material.dart';
import 'package:dashboard_estadisticas/feature/dashboard_estadisticas/presentation/widgets/custom_card.dart';

class CustomStatsSection extends StatelessWidget {
  const CustomStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const Row(
            children: [
              Expanded(
                flex: 5,
                child: CustomCard(title: 'Tarjeta 1', value: '50%'),
              ),
              SizedBox(width: 16),
              Expanded(
                flex: 3,
                child: CustomCard(title: 'Tarjeta 2', value: '30%'),
              ),
              SizedBox(width: 16),
              Expanded(
                flex: 2,
                child: CustomCard(title: 'Tarjeta 3', value: 'flexible'),
              ),
            ],
          );
        } else {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomCard(title: 'Tarjetas 1', value: '50%'),
              CustomCard(title: 'Tarjetas 2', value: '30%'),
              CustomCard(title: 'Tarjetas 3', value: 'Flexible'),
            ],
          );
        }
      },
    );
  }
}
