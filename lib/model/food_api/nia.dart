import 'package:flutter/foundation.dart';

@immutable
class Nia {
  final String? label;
  final double? quantity;
  final String? unit;

  const Nia({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Nia(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Nia.fromJson(Map<String, dynamic> json) => Nia(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Nia copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Nia(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Nia) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
