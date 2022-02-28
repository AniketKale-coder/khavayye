import 'package:flutter/foundation.dart';

@immutable
class Vitb12 {
  final String? label;
  final double? quantity;
  final String? unit;

  const Vitb12({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Vitb12(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Vitb12.fromJson(Map<String, dynamic> json) => Vitb12(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Vitb12 copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Vitb12(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Vitb12) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
