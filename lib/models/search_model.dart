// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'dart:convert';

SearchModel searchModelFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    required this.success,
    required this.products,
    required this.demoProduct,
    required this.productsCount,
    required this.resultPerPage,
    required this.filteredProductsCount,
  });

  bool success;
  List<Product> products;
  List<DemoProduct> demoProduct;
  int productsCount;
  int resultPerPage;
  int filteredProductsCount;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        success: json["success"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        demoProduct: List<DemoProduct>.from(
            json["demoProduct"].map((x) => DemoProduct.fromJson(x))),
        productsCount: json["productsCount"],
        resultPerPage: json["resultPerPage"],
        filteredProductsCount: json["filteredProductsCount"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "demoProduct": List<dynamic>.from(demoProduct.map((x) => x.toJson())),
        "productsCount": productsCount,
        "resultPerPage": resultPerPage,
        "filteredProductsCount": filteredProductsCount,
      };
}

class DemoProduct {
  DemoProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.ratings,
    required this.category,
  });

  String id;
  String name;
  int price;
  double ratings;
  String category;

  factory DemoProduct.fromJson(Map<String, dynamic> json) => DemoProduct(
        id: json["_id"],
        name: json["name"],
        price: json["price"],
        ratings: json["ratings"].toDouble(),
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "price": price,
        "ratings": ratings,
        "category": category,
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
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
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
