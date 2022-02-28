import 'package:flutter/foundation.dart';

@immutable
class Chole {
  final String? label;
  final double? quantity;
  final String? unit;

  const Chole({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Chole(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Chole.fromJson(Map<String, dynamic> json) => Chole(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Chole copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Chole(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Chole) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
