// To parse this JSON data, do
//
//     final demandProductModel = demandProductModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DemandProductModel demandProductModelFromJson(String str) => DemandProductModel.fromJson(json.decode(str));

String demandProductModelToJson(DemandProductModel data) => json.encode(data.toJson());

class DemandProductModel {
    DemandProductModel({
        required this.success,
        required this.msg,
        required this.products,
    });

    bool success;
    String msg;
    List<Product> products;

    factory DemandProductModel.fromJson(Map<String, dynamic> json) => DemandProductModel(
        success: json["success"],
        msg: json["msg"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.ratings,
        required this.images,
        required this.category,
        required this.stock,
        required this.numOfReviews,
        required this.user,
        required this.reviews,
        required this.createdAt,
        required this.v,
        required this.coloursAvailable,
        required this.sizesAvailable,
    });

    String id;
    String name;
    String description;
    int price;
    double ratings;
    List<Image> images;
    Category category;
    int stock;
    int numOfReviews;
    String user;
    List<Review> reviews;
    DateTime createdAt;
    int v;
    List<dynamic> coloursAvailable;
    List<dynamic> sizesAvailable;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        ratings: json["ratings"].toDouble(),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        category: Category.fromJson(json["category"]),
        stock: json["Stock"],
        numOfReviews: json["numOfReviews"],
        user: json["user"],
        reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
        coloursAvailable: List<dynamic>.from(json["coloursAvailable"].map((x) => x)),
        sizesAvailable: List<dynamic>.from(json["sizesAvailable"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "price": price,
        "ratings": ratings,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "category": category.toJson(),
        "Stock": stock,
        "numOfReviews": numOfReviews,
        "user": user,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
        "coloursAvailable": List<dynamic>.from(coloursAvailable.map((x) => x)),
        "sizesAvailable": List<dynamic>.from(sizesAvailable.map((x) => x)),
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

class Image {
    Image({
        required this.publicId,
        required this.url,
        required this.id,
    });

    String publicId;
    String url;
    String id;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        publicId: json["public_id"],
        url: json["url"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "url": url,
        "_id": id,
    };
}

class Review {
    Review({
        required this.user,
        required this.name,
        required this.rating,
        required this.comment,
        required this.id,
    });

    String user;
    String name;
    int rating;
    String comment;
    String id;

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        user: json["user"],
        name: json["name"],
        rating: json["rating"],
        comment: json["comment"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "rating": rating,
        "comment": comment,
        "_id": id,
    };
}
