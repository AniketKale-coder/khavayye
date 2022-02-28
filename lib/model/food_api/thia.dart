import 'package:flutter/foundation.dart';

@immutable
class Thia {
  final String? label;
  final double? quantity;
  final String? unit;

  const Thia({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Thia(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Thia.fromJson(Map<String, dynamic> json) => Thia(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Thia copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Thia(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Thia) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
