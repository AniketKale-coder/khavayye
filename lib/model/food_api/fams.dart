import 'package:flutter/foundation.dart';

@immutable
class Fams {
  final String? label;
  final double? quantity;
  final String? unit;

  const Fams({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Fams(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Fams.fromJson(Map<String, dynamic> json) => Fams(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Fams copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Fams(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Fams) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
