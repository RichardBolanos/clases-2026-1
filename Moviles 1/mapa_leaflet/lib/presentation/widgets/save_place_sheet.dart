// presentation/widgets/save_place_sheet.dart
// ──────────────────────────────────────────────────────────────
// Bottom sheet con formulario para guardar la ubicación actual.
// Incluye campo de nombre, grid de categorías y botón guardar.
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import '../../domain/entities/place_category.dart';
import '../../domain/entities/saved_place.dart';
import 'category_grid.dart';

/// Bottom sheet para guardar un lugar con nombre y categoría.
///
/// Recibe:
/// - [position]: coordenadas GPS actuales a guardar
/// - [onSave]: callback que recibe el [SavedPlace] creado
///
/// Usa [StatefulBuilder] internamente para manejar la selección
/// de categoría sin necesidad de que el padre se reconstruya.
class SavePlaceSheet extends StatelessWidget {
  final LatLng position;
  final ValueChanged<SavedPlace> onSave;

  const SavePlaceSheet({
    super.key,
    required this.position,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    // Controlador para el campo de texto del nombre
    final nameController = TextEditingController();
    // Categoría seleccionada (null hasta que el usuario toque una)
    PlaceCategory? selected;

    return StatefulBuilder(
      // StatefulBuilder nos da un setModalState local para
      // actualizar solo el contenido del bottom sheet
      builder: (ctx, setModalState) => Padding(
        // Padding inferior dinámico para no quedar detrás del teclado
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Solo ocupa lo necesario
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Título del formulario ──
            const Text(
              'Guardar ubicación',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // ── Coordenadas actuales (informativo) ──
            Text(
              'Lat: ${position.latitude.toStringAsFixed(5)}, '
              'Lng: ${position.longitude.toStringAsFixed(5)}',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
            ),
            const SizedBox(height: 12),

            // ── Campo de texto: nombre del lugar ──
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nombre del lugar',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // ── Etiqueta de sección ──
            const Text(
              'Categoría:',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),

            // ── Grid de categorías (widget reutilizable) ──
            CategoryGrid(
              selected: selected,
              onSelected: (cat) => setModalState(() => selected = cat),
            ),
            const SizedBox(height: 12),

            // ── Botón guardar ──
            // Valida que haya nombre y categoría antes de guardar.
            FilledButton.icon(
              onPressed: () {
                // Validación: ambos campos son obligatorios
                if (nameController.text.trim().isEmpty || selected == null) {
                  ScaffoldMessenger.of(ctx).showSnackBar(
                    const SnackBar(
                      content: Text('Completa nombre y categoría'),
                    ),
                  );
                  return;
                }
                // Crear el lugar y notificar al padre
                final place = SavedPlace(
                  name: nameController.text.trim(),
                  category: selected!,
                  position: position,
                  savedAt: DateTime.now(),
                );
                onSave(place);
                Navigator.pop(ctx);
              },
              icon: const Icon(Icons.save),
              label: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
