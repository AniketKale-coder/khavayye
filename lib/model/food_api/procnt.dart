import 'package:flutter/foundation.dart';

@immutable
class Procnt {
  final String? label;
  final double? quantity;
  final String? unit;

  const Procnt({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Procnt(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Procnt.fromJson(Map<String, dynamic> json) => Procnt(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Procnt copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Procnt(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Procnt) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
