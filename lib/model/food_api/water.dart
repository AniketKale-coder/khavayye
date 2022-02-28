import 'package:flutter/foundation.dart';

@immutable
class Water {
  final String? label;
  final double? quantity;
  final String? unit;

  const Water({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Water(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Water.fromJson(Map<String, dynamic> json) => Water(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Water copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Water(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Water) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
