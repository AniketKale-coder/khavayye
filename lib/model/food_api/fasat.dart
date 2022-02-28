import 'package:flutter/foundation.dart';

@immutable
class Fasat {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fasat({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fasat(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fasat.fromJson(Map<String, dynamic> json) => Fasat(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fasat copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fasat(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fasat) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
