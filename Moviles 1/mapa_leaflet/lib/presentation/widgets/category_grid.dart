// presentation/widgets/category_grid.dart
// ──────────────────────────────────────────────────────────────
// Widget reutilizable que muestra las categorías en un grid
// de 4 columnas. Resalta la categoría seleccionada con su color.
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import '../../domain/entities/place_category.dart';
import '../../data/constants/categories.dart';

/// Grid de selección de categorías.
///
/// Muestra las 20 categorías en un grid scrollable de 4 columnas.
/// La categoría seleccionada se resalta con fondo y borde de su color.
///
/// Parámetros:
/// - [selected]: categoría actualmente seleccionada (null si ninguna)
/// - [onSelected]: callback que se ejecuta al tocar una categoría
class CategoryGrid extends StatelessWidget {
  final PlaceCategory? selected;
  final ValueChanged<PlaceCategory> onSelected;

  const CategoryGrid({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Altura fija para el grid scrollable
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 categorías por fila
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.85, // Ligeramente más alto que ancho
        ),
        itemCount: categories.length,
        itemBuilder: (_, i) {
          final cat = categories[i];
          final isSelected = selected == cat;
          return GestureDetector(
            // Al tocar, notifica al padre qué categoría se eligió
            onTap: () => onSelected(cat),
            child: Container(
              decoration: BoxDecoration(
                // Fondo coloreado si está seleccionada, gris si no
                color: isSelected
                    ? cat.color.withValues(alpha: 0.2)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                // Borde visible solo cuando está seleccionada
                border: isSelected
                    ? Border.all(color: cat.color, width: 2)
                    : null,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(cat.icon, color: cat.color, size: 28),
                  const SizedBox(height: 4),
                  Text(
                    cat.name,
                    style: const TextStyle(fontSize: 10),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
