import 'package:flutter/foundation.dart';

@immutable
class Vitc {
  final String? label;
  final double? quantity;
  final String? unit;

  const Vitc({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Vitc(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Vitc.fromJson(Map<String, dynamic> json) => Vitc(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Vitc copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Vitc(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Vitc) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
