import 'package:unit_converter/features/home/model/category_model.dart';

class CategoryData {
  CategoryData._();
  static final List<CategoryModel> data = [
    CategoryModel(
      name: "Area",
      icon: "assets/area-chart-svgrepo-com.svg",
      unitType: .area,
    ),
    CategoryModel(
      name: "Data",
      icon: "assets/data-svgrepo-com.svg",
      unitType: .data,
    ),
    CategoryModel(
      name: "Lenght",
      icon: "assets/measuring-ruler-svgrepo-com.svg",
      unitType: .lenght,
    ),
    CategoryModel(
      name: "Speed",
      icon: "assets/speed-alt-svgrepo-com.svg",
      unitType: .speed,
    ),
    CategoryModel(
      name: "Temperature",
      icon: "assets/temperature-svgrepo-com.svg",
      unitType: .temperature,
    ),
    CategoryModel(
      name: "Time",
      icon: "assets/time-svgrepo-com.svg",
      unitType: .time,
    ),
    CategoryModel(
      name: "Weight",
      icon: "assets/weight-svgrepo-com.svg",
      unitType: .weight,
    ),
    CategoryModel(
      name: "Size",
      icon: "assets/size-option-square-button-of-lines-svgrepo-com.svg",
      unitType: .size,
    ),
  ];
}
