// To parse this JSON data, do
//
//     final trandCategoryModel = trandCategoryModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TrandCategoryModel trandCategoryModelFromJson(String str) => TrandCategoryModel.fromJson(json.decode(str));

String trandCategoryModelToJson(TrandCategoryModel data) => json.encode(data.toJson());

class TrandCategoryModel {
    TrandCategoryModel({
        required this.msg,
        required this.categories,
    });

    String msg;
    List<Category> categories;

    factory TrandCategoryModel.fromJson(Map<String, dynamic> json) => TrandCategoryModel(
        msg: json["msg"],
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
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
