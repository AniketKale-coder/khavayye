import 'package:flutter/foundation.dart';

@immutable
class Folfd {
  final String? label;
  final double? quantity;
  final String? unit;

  const Folfd({this.label, this.quantity, this.unit});

  @override
  String toString() {
    return 'Folfd(label: $label, quantity: $quantity, unit: $unit)';
  }

  factory Folfd.fromJson(Map<String, dynamic> json) => Folfd(
        label: json['label'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'quantity': quantity,
        'unit': unit,
      };

  Folfd copyWith({
    String? label,
    double? quantity,
    String? unit,
  }) {
    return Folfd(
      label: label ?? this.label,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Folfd) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => label.hashCode ^ quantity.hashCode ^ unit.hashCode;
}
