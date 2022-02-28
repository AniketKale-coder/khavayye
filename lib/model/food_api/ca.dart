import 'package:flutter/foundation.dart';

@immutable
class Ca {
  final String? label;
  final double? quantity;
  final String? unit;

  const Ca({this.label, this.quantity, this.unit});

  @override
  String toString() => 'Ca(label: $label, quantity: $quantity, unit: $unit)';

  factory Ca.fromJson(Map<String, dynamic> json) => Ca(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Ca copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Ca(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Ca) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
