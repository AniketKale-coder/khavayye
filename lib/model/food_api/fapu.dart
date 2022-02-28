import 'package:flutter/foundation.dart';

@immutable
class Fapu {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fapu({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fapu(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fapu.fromJson(Map<String, dynamic> json) => Fapu(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fapu copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fapu(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fapu) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
