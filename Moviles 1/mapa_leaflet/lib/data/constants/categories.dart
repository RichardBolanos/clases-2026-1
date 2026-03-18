// data/constants/categories.dart
// ──────────────────────────────────────────────────────────────
// Lista predefinida de 20 categorías de sitios públicos.
// Cada una con icono de Material Icons y color único para
// distinguirlas en el grid de selección y en los marcadores.
// ──────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import '../../domain/entities/place_category.dart';

/// Las 20 categorías disponibles, agrupadas por temática.
const List<PlaceCategory> categories = [
  // ── Salud ──
  PlaceCategory(
    name: 'Hospital',
    icon: Icons.local_hospital,
    color: Colors.red,
  ),
  PlaceCategory(
    name: 'Farmacia',
    icon: Icons.local_pharmacy,
    color: Colors.pink,
  ),

  // ── Educación y cultura ──
  PlaceCategory(name: 'Escuela', icon: Icons.school, color: Colors.blue),
  PlaceCategory(name: 'Biblioteca', icon: Icons.menu_book, color: Colors.brown),
  PlaceCategory(name: 'Museo', icon: Icons.museum, color: Colors.indigo),

  // ── Recreación ──
  PlaceCategory(name: 'Parque', icon: Icons.park, color: Colors.green),
  PlaceCategory(
    name: 'Gimnasio',
    icon: Icons.fitness_center,
    color: Colors.lime,
  ),
  PlaceCategory(name: 'Cine', icon: Icons.movie, color: Colors.deepOrange),

  // ── Alimentación y comercio ──
  PlaceCategory(
    name: 'Restaurante',
    icon: Icons.restaurant,
    color: Colors.orange,
  ),
  PlaceCategory(
    name: 'Supermercado',
    icon: Icons.shopping_cart,
    color: Colors.teal,
  ),

  // ── Transporte ──
  PlaceCategory(
    name: 'Gasolinera',
    icon: Icons.local_gas_station,
    color: Colors.grey,
  ),
  PlaceCategory(
    name: 'Estación de bus',
    icon: Icons.directions_bus,
    color: Colors.amber,
  ),
  PlaceCategory(
    name: 'Estación de tren',
    icon: Icons.train,
    color: Colors.blueGrey,
  ),
  PlaceCategory(name: 'Aeropuerto', icon: Icons.flight, color: Colors.cyan),
  PlaceCategory(
    name: 'Estacionamiento',
    icon: Icons.local_parking,
    color: Colors.black54,
  ),

  // ── Servicios públicos ──
  PlaceCategory(
    name: 'Banco',
    icon: Icons.account_balance,
    color: Colors.deepPurple,
  ),
  PlaceCategory(
    name: 'Policía',
    icon: Icons.local_police,
    color: Colors.blueAccent,
  ),
  PlaceCategory(name: 'Correos', icon: Icons.mail, color: Colors.yellow),
  PlaceCategory(name: 'Iglesia', icon: Icons.church, color: Colors.purple),
  PlaceCategory(
    name: 'Plaza pública',
    icon: Icons.location_city,
    color: Colors.lightGreen,
  ),
];
