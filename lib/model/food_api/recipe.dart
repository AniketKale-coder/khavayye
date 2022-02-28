import 'package:flutter/foundation.dart';

import 'digest.dart';
import 'ingredient.dart';
import 'total_daily.dart';
import 'total_nutrients.dart';

@immutable
class Recipe {
  final String? uri;
  final String? label;
  final String? image;
  final String? source;
  final String? url;
  final String? shareAs;
  final double? yield;
  final List<dynamic>? dietLabels;
  final List<dynamic>? healthLabels;
  final List<dynamic>? cautions;
  final List<dynamic>? ingredientLines;
  final List<Ingredient>? ingredients;
  final double? calories;
  final double? totalWeight;
  final double? totalTime;
  final List<dynamic>? cuisineType;
  final List<dynamic>? mealType;
  final List<dynamic>? dishType;
  final TotalNutrients? totalNutrients;
  final TotalDaily? totalDaily;
  final List<Digest>? digest;

  const Recipe({
    this.uri,
    this.label,
    this.image,
    this.source,
    this.url,
    this.shareAs,
    this.yield,
    this.dietLabels,
    this.healthLabels,
    this.cautions,
    this.ingredientLines,
    this.ingredients,
    this.calories,
    this.totalWeight,
    this.totalTime,
    this.cuisineType,
    this.mealType,
    this.dishType,
    this.totalNutrients,
    this.totalDaily,
    this.digest,
  });

  @override
  String toString() {
    return 'Recipe(uri: $uri, label: $label, image: $image, source: $source, url: $url, shareAs: $shareAs, yield: $yield, dietLabels: $dietLabels, healthLabels: $healthLabels, cautions: $cautions, ingredientLines: $ingredientLines, ingredients: $ingredients, calories: $calories, totalWeight: $totalWeight, totalTime: $totalTime, cuisineType: $cuisineType, mealType: $mealType, dishType: $dishType, totalNutrients: $totalNutrients, totalDaily: $totalDaily, digest: $digest)';
  }

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        uri: json['uri'] as String?,
        label: json['label'] as String?,
        image: json['image'] as String?,
        source: json['source'] as String?,
        url: json['url'] as String?,
        shareAs: json['shareAs'] as String?,
        yield: json['yield'] as double?,
        dietLabels: json['dietLabels'] as List<dynamic>?,
        healthLabels: json['healthLabels'] as List<dynamic>?,
        cautions: json['cautions'] as List<dynamic>?,
        ingredientLines: json['ingredientLines'] as List<dynamic>?,
        ingredients: (json['ingredients'] as List<dynamic>?)
            ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
            .toList(),
        calories: (json['calories'] as num?)?.toDouble(),
        totalWeight: (json['totalWeight'] as num?)?.toDouble(),
        totalTime: json['totalTime'] as double?,
        cuisineType: json['cuisineType'] as List<dynamic>?,
        mealType: json['mealType'] as List<dynamic>?,
        dishType: json['dishType'] as List<dynamic>?,
        totalNutrients: json['totalNutrients'] == null
            ? null
            : TotalNutrients.fromJson(
                json['totalNutrients'] as Map<String, dynamic>),
        totalDaily: json['totalDaily'] == null
            ? null
            : TotalDaily.fromJson(json['totalDaily'] as Map<String, dynamic>),
        digest: (json['digest'] as List<dynamic>?)
            ?.map((e) => Digest.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'uri': uri,
        'label': label,
        'image': image,
        'source': source,
        'url': url,
        'shareAs': shareAs,
        'yield': yield,
        'dietLabels': dietLabels,
        'healthLabels': healthLabels,
        'cautions': cautions,
        'ingredientLines': ingredientLines,
        'ingredients': ingredients?.map((e) => e.toJson()).toList(),
        'calories': calories,
        'totalWeight': totalWeight,
        'totalTime': totalTime,
        'cuisineType': cuisineType,
        'mealType': mealType,
        'dishType': dishType,
        'totalNutrients': totalNutrients?.toJson(),
        'totalDaily': totalDaily?.toJson(),
        'digest': digest?.map((e) => e.toJson()).toList(),
      };

  Recipe copyWith({
    String? uri,
    String? label,
    String? image,
    String? source,
    String? url,
    String? shareAs,
    double? yield,
    List<dynamic>? dietLabels,
    List<dynamic>? healthLabels,
    List<dynamic>? cautions,
    List<dynamic>? ingredientLines,
    List<Ingredient>? ingredients,
    double? calories,
    double? totalWeight,
    double? totalTime,
    List<dynamic>? cuisineType,
    List<dynamic>? mealType,
    List<dynamic>? dishType,
    TotalNutrients? totalNutrients,
    TotalDaily? totalDaily,
    List<Digest>? digest,
  }) {
    return Recipe(
      uri: uri ?? this.uri,
      label: label ?? this.label,
      image: image ?? this.image,
      source: source ?? this.source,
      url: url ?? this.url,
      shareAs: shareAs ?? this.shareAs,
      yield: yield ?? this.yield,
      dietLabels: dietLabels ?? this.dietLabels,
      healthLabels: healthLabels ?? this.healthLabels,
      cautions: cautions ?? this.cautions,
      ingredientLines: ingredientLines ?? this.ingredientLines,
      ingredients: ingredients ?? this.ingredients,
      calories: calories ?? this.calories,
      totalWeight: totalWeight ?? this.totalWeight,
      totalTime: totalTime ?? this.totalTime,
      cuisineType: cuisineType ?? this.cuisineType,
      mealType: mealType ?? this.mealType,
      dishType: dishType ?? this.dishType,
      totalNutrients: totalNutrients ?? this.totalNutrients,
      totalDaily: totalDaily ?? this.totalDaily,
      digest: digest ?? this.digest,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Recipe) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      uri.hashCode ^
      label.hashCode ^
      image.hashCode ^
      source.hashCode ^
      url.hashCode ^
      shareAs.hashCode ^
      yield.hashCode ^
      dietLabels.hashCode ^
      healthLabels.hashCode ^
      cautions.hashCode ^
      ingredientLines.hashCode ^
      ingredients.hashCode ^
      calories.hashCode ^
      totalWeight.hashCode ^
      totalTime.hashCode ^
      cuisineType.hashCode ^
      mealType.hashCode ^
      dishType.hashCode ^
      totalNutrients.hashCode ^
      totalDaily.hashCode ^
      digest.hashCode;
}
