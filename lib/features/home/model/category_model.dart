import 'package:flutter/widgets.dart';
import 'package:unit_converter/features/home/data/category_data.dart';

class CategoryModel {
  final String name;
  final String icon;
  final List<UnitType> unitType;
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
