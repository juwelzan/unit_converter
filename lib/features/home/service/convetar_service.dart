// ignore_for_file: file_names
class ConvetarService {
  ConvetarService._();

  ///Time service
  static const Map<TimeType, double> _toSecond = {
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
  static double convetTime({
    required double value,
    required TimeType from,
    required TimeType to,
  }) {
    if (from == to) return value;
    double fromSecond = value * _toSecond[from]!;

    return fromSecond / _toSecond[to]!;
  }

  /// Time Service

  ///Weight Service
  static const Map<WeightType, double> _toGram = {
    WeightType.milligram: 0.001,
    WeightType.gram: 1,
    WeightType.kilogram: 1000,
    WeightType.pound: 453.592,
    WeightType.ounce: 28.3495,
    WeightType.metricTon: 1000000,
  };

  static double convertWeight({
    required double valu,
    required WeightType from,
    required WeightType to,
  }) {
    if (from == to) return valu;
    double gram = valu * _toGram[from]!;

    return gram / _toGram[to]!;
  }

  ///Weight Service

  /// Storag Service
  static const Map<StoragType, double> _toMegabyte = {
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

  static double convertStorag({
    required double valu,
    required StoragType from,
    required StoragType to,
  }) {
    if (from == to) return valu;
    double megabit = valu * _toMegabyte[from]!;
    return megabit / _toMegabyte[to]!;
  }

  /// Storag Service
}

/// enum type

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


/// enum type


