// domain/entities/place_category.dart
// ──────────────────────────────────────────────────────────────
// Entidad que representa una categoría de lugar público.
// Pertenece a la capa de dominio: no depende de Flutter ni de
// ningún paquete externo (salvo Material para IconData/Color).
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';

/// Modelo inmutable que define una categoría de sitio público.
///
/// Cada categoría tiene:
/// - [name]: nombre legible (ej: "Hospital", "Parque")
/// - [icon]: icono de Material Design que la identifica visualmente
/// - [color]: color asociado para diferenciarla en el mapa y la UI
class PlaceCategory {
  final String name;
  final IconData icon;
  final Color color;

  const PlaceCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}
