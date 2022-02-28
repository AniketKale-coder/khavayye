import 'package:flutter/foundation.dart';

import 'recipe.dart';

@immutable
class Hit {
  final Recipe? recipe;

  const Hit({this.recipe});

  @override
  String toString() => 'Hit(recipe: $recipe)';

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: json['recipe'] == null
            ? null
            : Recipe.fromJson(json['recipe'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'recipe': recipe?.toJson(),
      };

  Hit copyWith({
    Recipe? recipe,
  }) {
    return Hit(
      recipe: recipe ?? this.recipe,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Hit) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => recipe.hashCode;
}
