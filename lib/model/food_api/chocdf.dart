import 'package:flutter/foundation.dart';

@immutable
class Chocdf {
  final String? label;
  final double? quantity;
  final String? unit;

  const Chocdf({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Chocdf(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Chocdf.fromJson(Map<String, dynamic> json) => Chocdf(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Chocdf copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Chocdf(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Chocdf) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
