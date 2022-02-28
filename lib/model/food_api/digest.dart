import 'package:flutter/foundation.dart';

import 'sub.dart';

@immutable
class Digest {
  final String? label;
  final String? tag;
  final String? schemaOrgTag;
  final double? total;
  final bool? hasRdi;
  final double? daily;
  final String? unit;
  final List<Sub>? sub;

  const Digest({
    this.label,
    this.tag,
    this.schemaOrgTag,
    this.total,
    this.hasRdi,
    this.daily,
    this.unit,
    this.sub,
  });

  @override
  String toString() {
    return 'Digest(label: $label, tag: $tag, schemaOrgTag: $schemaOrgTag, total: $total, hasRdi: $hasRdi, daily: $daily, unit: $unit, sub: $sub)';
  }

  factory Digest.fromJson(Map<String, dynamic> json) => Digest(
        label: json['label'] as String?,
        tag: json['tag'] as String?,
        schemaOrgTag: json['schemaOrgTag'] as String?,
        total: (json['total'] as num?)?.toDouble(),
        hasRdi: json['hasRDI'] as bool?,
        daily: (json['daily'] as num?)?.toDouble(),
        unit: json['unit'] as String?,
        sub: (json['sub'] as List<dynamic>?)
            ?.map((e) => Sub.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'tag': tag,
        'schemaOrgTag': schemaOrgTag,
        'total': total,
        'hasRDI': hasRdi,
        'daily': daily,
        'unit': unit,
        'sub': sub?.map((e) => e.toJson()).toList(),
      };

  Digest copyWith({
    String? label,
    String? tag,
    String? schemaOrgTag,
    double? total,
    bool? hasRdi,
    double? daily,
    String? unit,
    List<Sub>? sub,
  }) {
    return Digest(
      label: label ?? this.label,
      tag: tag ?? this.tag,
      schemaOrgTag: schemaOrgTag ?? this.schemaOrgTag,
      total: total ?? this.total,
      hasRdi: hasRdi ?? this.hasRdi,
      daily: daily ?? this.daily,
      unit: unit ?? this.unit,
      sub: sub ?? this.sub,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Digest) return false;
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
      unit.hashCode ^
      sub.hashCode;
}
