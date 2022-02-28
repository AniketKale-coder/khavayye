import 'package:flutter/foundation.dart';

@immutable
class Fatrn {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fatrn({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fatrn(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fatrn.fromJson(Map<String, dynamic> json) => Fatrn(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fatrn copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fatrn(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fatrn) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
