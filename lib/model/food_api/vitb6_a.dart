import 'package:flutter/foundation.dart';

@immutable
class Vitb6A {
  final String? label;
  final double? quantity;
  final String? unit;

  const Vitb6A({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Vitb6A(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Vitb6A.fromJson(Map<String, dynamic> json) => Vitb6A(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Vitb6A copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Vitb6A(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Vitb6A) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
