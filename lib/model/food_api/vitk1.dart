import 'package:flutter/foundation.dart';

@immutable
class Vitk1 {
  final String? label;
  final double? quantity;
  final String? unit;

  const Vitk1({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Vitk1(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Vitk1.fromJson(Map<String, dynamic> json) => Vitk1(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Vitk1 copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Vitk1(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Vitk1) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
