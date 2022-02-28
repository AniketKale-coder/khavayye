import 'package:flutter/foundation.dart';

@immutable
class Fat {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fat({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fat(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fat.fromJson(Map<String, dynamic> json) => Fat(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fat copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fat(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fat) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
