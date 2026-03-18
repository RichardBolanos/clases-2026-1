// app.dart
// ──────────────────────────────────────────────────────────────
// Widget raíz de la aplicación. Configura MaterialApp con el
// tema, título y la página principal (MapPage).
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'presentation/pages/map_page.dart';

/// Widget raíz que configura el MaterialApp.
///
/// - Material 3 habilitado con tema azul
/// - Sin banner de debug
/// - [MapPage] como pantalla de inicio
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mapa Leaflet',
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const MapPage(),
    );
  }
}
