import 'package:flutter/material.dart';
import 'package:unit_converter/features/home/data/category_data.dart';
import 'package:unit_converter/features/home/service/convetar_service.dart';

class UnitProvider with ChangeNotifier {
  int currentInedx = 0;
  double rotationValue = 0;
  bool isFormDrop = false;
  bool isToDrop = false;
  int seletedFormDrop = 0;
  bool isAnimating = false;
  double result = 0;
  int seletedToDrop = 0;
  double value = 0;
  dynamic selectedFormTypeName = TypeList.areaType[0].name;
  dynamic selectedToTypeName = TypeList.areaType[1].name;
  String selectNameFrom = TypeList.areaType[0].name.toString().split(".").last;
  String selectNameTo = TypeList.areaType[1].name.toString().split(".").last;
  List<UnitType> types = TypeList.areaType;
  Color backGround = CategoryData.data[0].iconco;

  void selectUnit(int index, Color bc) {
    currentInedx = index;
    backGround = bc;
    notifyListeners();
  }

  void updateType(List<UnitType> t) {
    types = t;
    seletedFormDrop = 0;
    seletedToDrop = 0;
    selectNameFrom = types[0].name.toString().split(".").last;
    selectNameTo = types[1].name.toString().split(".").last;
    selectedFormTypeName = t[0].name;
    selectedToTypeName = t[1].name;

    answer(
      selectedFormTypeName,
      selectedFormTypeName,
      selectedToTypeName,
      value,
    );

    notifyListeners();
  }

  void updateFormDrop(bool v) {
    if (isToDrop && v) {
      isToDrop = !v;
      isFormDrop = v;
    } else {
      isFormDrop = v;
    }

    notifyListeners();
  }

  void updateToDrop(bool v) {
    if (isFormDrop && v) {
      isFormDrop = !v;
      isToDrop = v;
    } else {
      isToDrop = v;
    }

    notifyListeners();
  }

  void updateFormDropIndex(int index, dynamic name) {
    seletedFormDrop = index;
    selectNameFrom = name;
    notifyListeners();
  }

  void updateToDropIndex(int index, dynamic name) {
    seletedToDrop = index;
    selectNameTo = name;
    notifyListeners();
  }

  void updateRotationValue() {
    rotationValue += 0.5;
    notifyListeners();
  }

  void swap() {
    final temp = selectNameFrom;
    selectNameFrom = selectNameTo;
    selectNameTo = temp;

    final tempType = selectedFormTypeName;
    selectedFormTypeName = selectedToTypeName;
    selectedToTypeName = tempType;

    final tempIndex = seletedFormDrop;
    seletedFormDrop = seletedToDrop;
    seletedToDrop = tempIndex;

    notifyListeners();
  }

  void answer(dynamic type, dynamic from, dynamic to, double value) async {
    selectedFormTypeName = from;
    selectedToTypeName = to;
    final types = type.toString().split(".").first;
    switch (types) {
      case "AreaType":
        result = ConvetarService.convertArea(value, from, to);

      case "SpeedType":
        result = ConvetarService.convertSpeed(valu: value, from: from, to: to);
      case "Temperature":
        result = ConvetarService.convertTemperature(
          value: value,
          from: from,
          to: to,
        );
      case "StoragType":
        result = ConvetarService.convertStorag(valu: value, from: from, to: to);
      case "WeightType":
        result = ConvetarService.convertWeight(valu: value, from: from, to: to);
      case "LengthType":
        result = ConvetarService.convertLength(value, from, to);
      case "TimeType":
        result = ConvetarService.convetTime(from: from, to: to, value: value);
    }
    valueAnimation();
    notifyListeners();
  }

  void valueAnimation() {
    isAnimating = true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 100), () {
      isAnimating = false;
      notifyListeners();
    });
  }
}
