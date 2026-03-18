// presentation/widgets/saved_places_sheet.dart
// ──────────────────────────────────────────────────────────────
// Bottom sheet que muestra la lista de lugares guardados.
// Permite navegar al lugar en el mapa o eliminarlo.
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import '../../domain/entities/saved_place.dart';

/// Lista de lugares guardados en un bottom sheet.
///
/// Cada elemento muestra:
/// - Icono circular con el color/icono de la categoría
/// - Nombre del lugar y nombre de la categoría
/// - Botón de eliminar (papelera roja)
///
/// Callbacks:
/// - [onPlaceTap]: se ejecuta al tocar un lugar (para centrar el mapa)
/// - [onDelete]: se ejecuta al tocar eliminar (índice del lugar)
class SavedPlacesSheet extends StatelessWidget {
  final List<SavedPlace> places;
  final ValueChanged<SavedPlace> onPlaceTap;
  final ValueChanged<int> onDelete;

  const SavedPlacesSheet({
    super.key,
    required this.places,
    required this.onPlaceTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    // Si no hay lugares, mostrar mensaje centrado
    if (places.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(32),
        child: Center(child: Text('No hay lugares guardados')),
      );
    }

    // Lista scrollable de lugares guardados
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (_, i) {
        final p = places[i];
        return ListTile(
          // Icono circular con el color de la categoría
          leading: CircleAvatar(
            backgroundColor: p.category.color.withValues(alpha: 0.2),
            child: Icon(p.category.icon, color: p.category.color),
          ),
          title: Text(p.name), // Nombre del lugar
          subtitle: Text(p.category.name), // Nombre de la categoría
          // Botón para eliminar el lugar
          trailing: IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.red),
            onPressed: () => onDelete(i),
          ),
          // Al tocar: notificar al padre para centrar el mapa
          onTap: () => onPlaceTap(p),
        );
      },
    );
  }
}
