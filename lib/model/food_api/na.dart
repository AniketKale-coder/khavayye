import 'package:flutter/foundation.dart';

@immutable
class Na {
  final String? label;
  final double? quantity;
  final String? unit;

  const Na({this.label, this.quantity, this.unit});

  @override
  String toString() => 'Na(label: $label, quantity: $quantity, unit: $unit)';

  factory Na.fromJson(Map<String, dynamic> json) => Na(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Na copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Na(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Na) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
