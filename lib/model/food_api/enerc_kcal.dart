import 'package:flutter/foundation.dart';

@immutable
class EnercKcal {
  final String? label;
  final double? quantity;
  final String? unit;

  const EnercKcal({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'EnercKcal(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory EnercKcal.fromJson(Map<String, dynamic> json) => EnercKcal(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  EnercKcal copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return EnercKcal(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! EnercKcal) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
