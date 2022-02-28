import 'package:flutter/foundation.dart';

@immutable
class K {
  final String? label;
  final double? quantity;
  final String? unit;

  const K({this.label, this.quantity, this.unit});

  @override
  String toString() => 'K(label: $label, quantity: $quantity, unit: $unit)';

  factory K.fromJson(Map<String, dynamic> json) => K(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  K copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return K(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! K) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
