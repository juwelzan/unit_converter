// ignore_for_file: file_names
class ConvetarService {
  ConvetarService._();

  ///Time service

  static double convetTime({
    required double value,
    required TimeType from,
    required TimeType to,
  }) {
    const Map<TimeType, double> toSecond = {
      TimeType.microSecond: 0.000001,
      TimeType.milliseconds: 0.001,
      TimeType.second: 1,
      TimeType.minute: 60,
      TimeType.hour: 3600,
      TimeType.day: 86400,
      TimeType.week: 604800,
      TimeType.month: 2592000,
      TimeType.year: 31536000,
    };
    if (from == to) return value;
    double fromSecond = value * toSecond[from]!;

    return fromSecond / toSecond[to]!;
  }

  /// Time Service

  ///Weight Service

  static double convertWeight({
    required double valu,
    required WeightType from,
    required WeightType to,
  }) {
    const Map<WeightType, double> toGram = {
      WeightType.milligram: 0.001,
      WeightType.gram: 1,
      WeightType.kilogram: 1000,
      WeightType.pound: 453.592,
      WeightType.ounce: 28.3495,
      WeightType.metricTon: 1000000,
    };
    if (from == to) return valu;
    double gram = valu * toGram[from]!;

    return gram / toGram[to]!;
  }

  ///Weight Service

  /// Storag Service

  static double convertStorag({
    required double valu,
    required StoragType from,
    required StoragType to,
  }) {
    const Map<StoragType, double> toMegabyte = {
      .bit: 1.0E-6,
      .byte: 8.0E-6,
      .kilobite: 0.001,
      .megabit: 1,
      .gigabit: 1000,
      .terabit: 1000000,
      .petabit: 1000000000,
      .exabit: 1000000000000,
      .zettabit: 1000000000000000,
      .yottabit: 1000000000000000000,
      .ronnabit: 1000000000000000000000,
      .quettabit: 1e24,
    };
    if (from == to) return valu;
    double megabit = valu * toMegabyte[from]!;
    return megabit / toMegabyte[to]!;
  }

  /// Storag Service
  //Speed Service

  static double convertSpeed({
    required double valu,
    required SpeedType from,
    required SpeedType to,
  }) {
    const Map<SpeedType, double> toMS = {
      .kilometerPerHou: 0.27778,
      .milesPerHour: 0.44704,
      .feetPerSecond: 0.3048,
      .meterPerSecond: 1,
    };
    if (to == from) return valu;
    num meter = valu * toMS[from]!;

    return meter / toMS[to]!;
  }

  //Speed Service

  //Temperature Service

  static double convertTemperature({
    required double value,
    required Temperature from,
    required Temperature to,
  }) {
    final Map<Temperature, Function> toCelsius = {
      .c: (v) => v,
      .f: (v) => (v - 32) * 5 / 9,
      .k: (v) => v - 273.15,
    };
    final Map<Temperature, Function> fromCelsius = {
      .c: (v) => v,
      .f: (v) => (v * (9 / 5)) + 32,
      .k: (v) => v + 273.15,
    };

    if (from == to) return value;
    final celsius = toCelsius[from]!(value);
    return fromCelsius[to]!(celsius);
  }

  //Temperature Service

  //Size Service

  //Size Service
  //Area service
  static double convertArea(double value, AreaType from, AreaType to) {
    Map<AreaType, double> toSquareMeter = {
      .squareKilometer: 1000000,
      .squareMeter: 1,
      .squareCentimeter: 0.0001,
      .squareFoot: 0.092903,
      .squareInch: 0.00064516,
      .acre: 4046.86,
      .hectare: 10000,
    };

    double valueInM2 = value * toSquareMeter[from]!;

    return valueInM2 / toSquareMeter[to]!;
  }

  //Area service
  //Length service
  static double convertLength(double value, LengthType from, LengthType to) {
    Map<LengthType, double> toMeter = {
      .kilometer: 1000,
      .meter: 1,
      .centimeter: 0.01,
      .millimeter: 0.001,
      .inch: 0.0254,
      .foot: 0.3048,
    };

    double valueInMeter = value * toMeter[from]!;

    return valueInMeter / toMeter[to]!;
  }
  //Length service
}

//Area service
/// enum type
enum SpeedType { meterPerSecond, kilometerPerHou, milesPerHour, feetPerSecond }

enum Temperature { c, f, k }

enum TimeType {
  microSecond,
  milliseconds,
  second,
  minute,
  hour,
  day,
  week,
  month,
  year,
}

enum WeightType { milligram, gram, kilogram, pound, ounce, metricTon }

enum StoragType {
  bit,
  byte,
  kilobite,
  megabit,
  gigabit,
  terabit,
  petabit,
  exabit,
  zettabit,
  yottabit,
  ronnabit,
  quettabit,
}

enum AreaType {
  squareMeter,
  squareKilometer,
  squareCentimeter,
  squareFoot,
  squareInch,
  acre,
  hectare,
}

enum LengthType { meter, kilometer, centimeter, millimeter, inch, foot }


/// enum type


// square meter (m²)
// square kilometer (km²)
// square centimeter (cm²)
// square foot (ft²)
// square inch (in²)
// acre
// hectare
