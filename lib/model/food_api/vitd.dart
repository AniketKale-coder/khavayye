import 'package:flutter/foundation.dart';

@immutable
class Vitd {
  final String? label;
  final double? quantity;
  final String? unit;

  const Vitd({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Vitd(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Vitd.fromJson(Map<String, dynamic> json) => Vitd(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Vitd copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Vitd(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Vitd) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
