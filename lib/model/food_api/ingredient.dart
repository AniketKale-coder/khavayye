import 'package:flutter/foundation.dart';

@immutable
class Ingredient {
  final String? text;
  final double? quantity;
  final String? measure;
  final String? food;
  final double? weight;
  final String? foodCategory;
  final String? foodId;
  final String? image;

  const Ingredient({
    this.text,
    this.quantity,
    this.measure,
    this.food,
    this.weight,
    this.foodCategory,
    this.foodId,
    this.image,
  });

  @override
  String toString() {
    return 'Ingredient(text: $text, quantity: $quantity, measure: $measure, food: $food, weight: $weight, foodCategory: $foodCategory, foodId: $foodId, image: $image)';
  }

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        text: json['text'] as String?,
        quantity: (json['quantity'] as num?)?.toDouble(),
        measure: json['measure'] as String?,
        food: json['food'] as String?,
        weight: (json['weight'] as num?)?.toDouble(),
        foodCategory: json['foodCategory'] as String?,
        foodId: json['foodId'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'quantity': quantity,
        'measure': measure,
        'food': food,
        'weight': weight,
        'foodCategory': foodCategory,
        'foodId': foodId,
        'image': image,
      };

  Ingredient copyWith({
    String? text,
    double? quantity,
    String? measure,
    String? food,
    double? weight,
    String? foodCategory,
    String? foodId,
    String? image,
  }) {
    return Ingredient(
      text: text ?? this.text,
      quantity: quantity ?? this.quantity,
      measure: measure ?? this.measure,
      food: food ?? this.food,
      weight: weight ?? this.weight,
      foodCategory: foodCategory ?? this.foodCategory,
      foodId: foodId ?? this.foodId,
      image: image ?? this.image,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Ingredient) return false;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      text.hashCode ^
      quantity.hashCode ^
      measure.hashCode ^
      food.hashCode ^
      weight.hashCode ^
      foodCategory.hashCode ^
      foodId.hashCode ^
      image.hashCode;
}
