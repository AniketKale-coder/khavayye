import 'package:flutter/foundation.dart';

@immutable
class Fibtg {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fibtg({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fibtg(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fibtg.fromJson(Map<String, dynamic> json) => Fibtg(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fibtg copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fibtg(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fibtg) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
