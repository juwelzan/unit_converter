import 'package:flutter/cupertino.dart';
import 'package:unit_converter/features/home/model/category_model.dart';

class CategoryData {
  CategoryData._();
  static final List<CategoryModel> data = [
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff4CAF50),
      back: Color(0xff3D3860),
      name: "Area",
      icon: "assets/area-chart-svgrepo-com.svg",
      unitType: .area,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff00BCD4),
      back: Color(0xff3D3860),
      name: "Storag",
      icon: "assets/data-svgrepo-com.svg",
      unitType: .data,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFF9800),
      back: Color(0xff3D3860),
      name: "Lenght",
      icon: "assets/measuring-ruler-svgrepo-com.svg",
      unitType: .lenght,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFFEB3B),
      back: Color(0xff3D3860),
      name: "Speed",
      icon: "assets/speed-alt-svgrepo-com.svg",
      unitType: .speed,
    ),
    CategoryModel(
      text: Color(0xff000000),
      iconco: Color(0xffF44336),
      back: Color(0xff3D3860),
      name: "Temperature",
      icon: "assets/temperature-svgrepo-com.svg",
      unitType: .temperature,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff3F51B5),
      back: Color(0xff3D3860),
      name: "Time",
      icon: "assets/time-svgrepo-com.svg",
      unitType: .time,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFF9800),
      back: Color(0xff3D3860),
      name: "Weight",
      icon: "assets/weight-svgrepo-com.svg",
      unitType: .weight,
    ),
  ];
}
