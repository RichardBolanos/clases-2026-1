// main.dart
// ──────────────────────────────────────────────────────────────
// Punto de entrada de la aplicación "Mapa Leaflet".
// Solo se encarga de arrancar la app, delegando toda la
// configuración y UI al widget [App].
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'app.dart';

/// Función principal: arranca la aplicación Flutter.
void main() {
  runApp(const App());
}
