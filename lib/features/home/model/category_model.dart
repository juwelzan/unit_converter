import 'package:flutter/widgets.dart';

class CategoryModel {
  final String name;
  final String icon;
  final UnitType unitType;
  final Color text, back, iconco;
  CategoryModel({
    required this.name,
    required this.icon,
    required this.unitType,
    required this.text,
    required this.back,
    required this.iconco,
  });
}

enum UnitType { lenght, weight, temperature, time, area, size, speed, data }
