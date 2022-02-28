import 'package:flutter/foundation.dart';

@immutable
class Foldfe {
  final String? label;
  final double? quantity;
  final String? unit;

  const Foldfe({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Foldfe(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Foldfe.fromJson(Map<String, dynamic> json) => Foldfe(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Foldfe copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Foldfe(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Foldfe) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
