// domain/entities/saved_place.dart
// ──────────────────────────────────────────────────────────────
// Entidad que representa un lugar guardado por el usuario.
// Combina un nombre, una categoría, coordenadas GPS y timestamp.
// ──────────────────────────────────────────────────────────────

import 'package:latlong2/latlong.dart';
import 'place_category.dart';

/// Modelo inmutable de un lugar que el usuario guardó en el mapa.
///
/// Almacena:
/// - [name]: nombre personalizado que el usuario le dio al lugar
/// - [category]: la categoría seleccionada (de tipo [PlaceCategory])
/// - [position]: coordenadas GPS (latitud/longitud) del momento en que se guardó
/// - [savedAt]: fecha y hora en que se guardó el lugar
class SavedPlace {
  final String name;
  final PlaceCategory category;
  final LatLng position;
  final DateTime savedAt;

  const SavedPlace({
    required this.name,
    required this.category,
    required this.position,
    required this.savedAt,
  });
}
