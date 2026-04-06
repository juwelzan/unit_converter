import 'package:flutter/cupertino.dart';
import 'package:unit_converter/features/home/model/category_model.dart';
import 'package:unit_converter/features/home/service/convetar_service.dart';

class CategoryData {
  CategoryData._();
  static final List<CategoryModel> data = [
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff4CAF50),
      back: Color(0xff3D3860),
      name: "Area",
      icon: "assets/area-chart-svgrepo-com.svg",
      unitType: TypeList.areaType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff00BCD4),
      back: Color(0xff3D3860),
      name: "Storag",
      icon: "assets/data-svgrepo-com.svg",
      unitType: TypeList.storagType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFF9800),
      back: Color(0xff3D3860),
      name: "Lenght",
      icon: "assets/measuring-ruler-svgrepo-com.svg",
      unitType: TypeList.lengthType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFFEB3B),
      back: Color(0xff3D3860),
      name: "Speed",
      icon: "assets/speed-alt-svgrepo-com.svg",
      unitType: TypeList.speedType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffF44336),
      back: Color(0xff3D3860),
      name: "Temperature",
      icon: "assets/temperature-svgrepo-com.svg",
      unitType: TypeList.temperatureType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xff3F51B5),
      back: Color(0xff3D3860),
      name: "Time",
      icon: "assets/time-svgrepo-com.svg",
      unitType: TypeList.timeType,
    ),
    CategoryModel(
      text: Color(0xffFFFFFF),
      iconco: Color(0xffFF9800),
      back: Color(0xff3D3860),
      name: "Weight",
      icon: "assets/weight-svgrepo-com.svg",
      unitType: TypeList.weightType,
    ),
  ];
}

class TypeList {
  TypeList._();
  static final List<UnitType> lengthType = [
    UnitType(name: LengthType.meter),
    UnitType(name: LengthType.kilometer),
    UnitType(name: LengthType.centimeter),
    UnitType(name: LengthType.millimeter),
    UnitType(name: LengthType.inch),
    UnitType(name: LengthType.foot),
  ];
  static final List<UnitType> areaType = [
    UnitType(name: AreaType.squareMeter),
    UnitType(name: AreaType.squareKilometer),
    UnitType(name: AreaType.squareCentimeter),
    UnitType(name: AreaType.squareFoot),
    UnitType(name: AreaType.squareInch),
    UnitType(name: AreaType.acre),
    UnitType(name: AreaType.hectare),
  ];
  static final List<UnitType> storagType = [
    UnitType(name: StoragType.bit),
    UnitType(name: StoragType.byte),
    UnitType(name: StoragType.kilobite),
    UnitType(name: StoragType.megabit),
    UnitType(name: StoragType.gigabit),
    UnitType(name: StoragType.terabit),
    UnitType(name: StoragType.petabit),
    UnitType(name: StoragType.exabit),
    UnitType(name: StoragType.zettabit),
    UnitType(name: StoragType.yottabit),
    UnitType(name: StoragType.ronnabit),
    UnitType(name: StoragType.quettabit),
  ];
  static final List<UnitType> speedType = [
    UnitType(name: SpeedType.meterPerSecond),
    UnitType(name: SpeedType.kilometerPerHou),
    UnitType(name: SpeedType.milesPerHour),
    UnitType(name: SpeedType.feetPerSecond),
  ];
  static final List<UnitType> temperatureType = [
    UnitType(name: Temperature.c),
    UnitType(name: Temperature.f),
    UnitType(name: Temperature.k),
  ];
  static final List<UnitType> timeType = [
    UnitType(name: TimeType.microSecond),
    UnitType(name: TimeType.milliseconds),
    UnitType(name: TimeType.second),
    UnitType(name: TimeType.minute),
    UnitType(name: TimeType.hour),
    UnitType(name: TimeType.day),
    UnitType(name: TimeType.week),
    UnitType(name: TimeType.month),
    UnitType(name: TimeType.year),
  ];
  static final List<UnitType> weightType = [
    UnitType(name: WeightType.milligram),
    UnitType(name: WeightType.gram),
    UnitType(name: WeightType.kilogram),
    UnitType(name: WeightType.pound),
    UnitType(name: WeightType.ounce),
    UnitType(name: WeightType.metricTon),
  ];
}

class UnitType {
  final dynamic name;
  UnitType({required this.name});
}
