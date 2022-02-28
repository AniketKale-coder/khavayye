import 'package:flutter/foundation.dart';

@immutable
class Tocpha {
  final String? label;
  final double? quantity;
  final String? unit;

  const Tocpha({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Tocpha(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Tocpha.fromJson(Map<String, dynamic> json) => Tocpha(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Tocpha copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Tocpha(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Tocpha) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
