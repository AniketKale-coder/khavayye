import 'package:flutter/foundation.dart';

@immutable
class Sub {
  final String? label;
  final String? tag;
  final String? schemaOrgTag;
  final double? total;
  final bool? hasRdi;
  final double? daily;
  final String? unit;

  const Sub({
    this.label,
    this.tag,
    this.schemaOrgTag,
    this.total,
    this.hasRdi,
    this.daily,
    this.unit,
  });

  @override
  String toString() {
    return 'Sub(label: $label, tag: $tag, schemaOrgTag: $schemaOrgTag, total: $total, hasRdi: $hasRdi, daily: $daily, unit: $unit)';
  }

  factory Sub.fromJson(Map<String, dynamic> json) => Sub(
        label: json['label'] as String?,
        tag: json['tag'] as String?,
        schemaOrgTag: json['schemaOrgTag'] as String?,
        total: (json['total'] as num?)?.toDouble(),
        hasRdi: json['hasRDI'] as bool?,
        daily: (json['daily'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'tag': tag,
        'schemaOrgTag': schemaOrgTag,
        'total': total,
        'hasRDI': hasRdi,
        'daily': daily,
        'unit': unit,
      };

  Sub copyWith({
    String? label,
    String? tag,
    String? schemaOrgTag,
    double? total,
    bool? hasRdi,
    double? daily,
    String? unit,
  }) {
    return Sub(
      label: label ?? this.label,
      tag: tag ?? this.tag,
      schemaOrgTag: schemaOrgTag ?? this.schemaOrgTag,
      total: total ?? this.total,
      hasRdi: hasRdi ?? this.hasRdi,
      daily: daily ?? this.daily,
      unit: unit ?? this.unit,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Sub) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      label.hashCode ^
      tag.hashCode ^
      schemaOrgTag.hashCode ^
      total.hashCode ^
      hasRdi.hashCode ^
      daily.hashCode ^
      unit.hashCode;
}
