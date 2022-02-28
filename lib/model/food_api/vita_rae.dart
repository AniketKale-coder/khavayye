import 'package:flutter/foundation.dart';

@immutable
class VitaRae {
  final String? label;
  final double? quantity;
  final String? unit;

  const VitaRae({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'VitaRae(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory VitaRae.fromJson(Map<String, dynamic> json) => VitaRae(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  VitaRae copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return VitaRae(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! VitaRae) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
