import 'package:flutter/foundation.dart';

@immutable
class Fe {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fe({this.label, this.quantity, this.unit});

  @override
  String toString() => 'Fe(label: $label, quantity: $quantity, unit: $unit)';

  factory Fe.fromJson(Map<String, dynamic> json) => Fe(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fe copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fe(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fe) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
