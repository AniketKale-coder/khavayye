import 'package:flutter/foundation.dart';

@immutable
class P {
  final String? label;
  final double? quantity;
  final String? unit;

  const P({this.label, this.quantity, this.unit});

  @override
  String toString() => 'P(label: $label, quantity: $quantity, unit: $unit)';

  factory P.fromJson(Map<String, dynamic> json) => P(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  P copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return P(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! P) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
