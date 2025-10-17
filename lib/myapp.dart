import 'package:dashboard_estadisticas/feature/dashboard_estadisticas/presentation/page/dashboard_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    ));
  }
}
