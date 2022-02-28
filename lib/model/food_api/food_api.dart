import 'package:flutter/foundation.dart';
import 'hit.dart';

@immutable
class FoodApi {
  final String? q;
  final int? from;
  final int? to;
  final bool? more;
  final int? count;
  final List<Hit>? hits;

  const FoodApi({
    this.q,
    this.from,
    this.to,
    this.more,
    this.count,
    this.hits,
  });

  @override
  String toString() {
    return 'FoodApi(q: $q, from: $from, to: $to, more: $more, count: $count, hits: $hits)';
  }

  factory FoodApi.fromJson(Map<String, dynamic> json) => FoodApi(
        q: json['q'] as String?,
        from: json['from'] as int?,
        to: json['to'] as int?,
        more: json['more'] as bool?,
        count: json['count'] as int?,
        hits: (json['hits'] as List<dynamic>?)
            ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'q': q,
        'from': from,
        'to': to,
        'more': more,
        'count': count,
        'hits': hits?.map((e) => e.toJson()).toList(),
      };

  FoodApi copyWith({
    String? q,
    int? from,
    int? to,
    bool? more,
    int? count,
    List<Hit>? hits,
  }) {
    return FoodApi(
      q: q ?? this.q,
      from: from ?? this.from,
      to: to ?? this.to,
      more: more ?? this.more,
      count: count ?? this.count,
      hits: hits ?? this.hits,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! FoodApi) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      q.hashCode ^
      from.hashCode ^
      to.hashCode ^
      more.hashCode ^
      count.hashCode ^
      hits.hashCode;
}
