import 'package:flutter/foundation.dart';

@immutable
class Ribf {
  final String? label;
  final double? quantity;
  final String? unit;

  const Ribf({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Ribf(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Ribf.fromJson(Map<String, dynamic> json) => Ribf(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Ribf copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Ribf(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Ribf) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
