class CategoryModel {
  final String name;
  final String icon;
  final UnitType unitType;
  CategoryModel({
    required this.name,
    required this.icon,
    required this.unitType,
  });
}

enum UnitType { lenght, weight, temperature, time, area, size, speed, data }
