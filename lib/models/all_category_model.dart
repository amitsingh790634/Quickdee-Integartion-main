// To parse this JSON data, do
//
//     final allCategoryModel = allCategoryModelFromJson(jsonString);

import 'dart:convert';

AllCategoryModel allCategoryModelFromJson(String str) =>
    AllCategoryModel.fromJson(json.decode(str));

String allCategoryModelToJson(AllCategoryModel data) =>
    json.encode(data.toJson());

class AllCategoryModel {
  AllCategoryModel({
    required this.success,
    required this.categories,
  });

  bool success;
  List<Category> categories;

  factory AllCategoryModel.fromJson(Map<String, dynamic> json) =>
      AllCategoryModel(
        success: json["success"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.id,
    required this.parentCategory,
    required this.v,
  });

  String id;
  String parentCategory;
  int v;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        parentCategory: json["parentCategory"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "parentCategory": parentCategory,
        "__v": v,
      };
}
