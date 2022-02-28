import 'package:flutter/foundation.dart';

@immutable
class Zn {
  final String? label;
  final double? quantity;
  final String? unit;

  const Zn({this.label, this.quantity, this.unit});

  @override
  String toString() => 'Zn(label: $label, quantity: $quantity, unit: $unit)';

  factory Zn.fromJson(Map<String, dynamic> json) => Zn(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Zn copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Zn(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Zn) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
