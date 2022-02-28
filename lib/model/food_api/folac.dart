import 'package:flutter/foundation.dart';

@immutable
class Folac {
  final String? label;
  final double? quantity;
  final String? unit;

  const Folac({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Folac(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Folac.fromJson(Map<String, dynamic> json) => Folac(
        label: json['label'] as String?,
        quantity: json['quantity'] as double?,
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Folac copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Folac(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Folac) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
