// presentation/widgets/map_error_card.dart
// ──────────────────────────────────────────────────────────────
// Tarjeta de error que se muestra sobre el mapa cuando hay
// problemas con la geolocalización o los permisos.
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';

/// Tarjeta roja posicionada sobre el mapa para mostrar errores.
///
/// Se ubica en la parte inferior del Stack, encima del FAB (bottom: 80).
/// Muestra el mensaje [error] centrado con texto rojo sobre fondo rojo claro.
class MapErrorCard extends StatelessWidget {
  final String error;

  const MapErrorCard({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 80, // Encima del FAB
      left: 20,
      right: 20,
      child: Card(
        color: Colors.red.shade100,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            error,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
