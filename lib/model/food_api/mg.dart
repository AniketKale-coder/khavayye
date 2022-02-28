import 'package:flutter/foundation.dart';

@immutable
class Mg {
  final String? label;
  final double? quantity;
  final String? unit;

  const Mg({this.label, this.quantity, this.unit});

  @override
  String toString() => 'Mg(label: $label, quantity: $quantity, unit: $unit)';

  factory Mg.fromJson(Map<String, dynamic> json) => Mg(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Mg copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Mg(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Mg) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
