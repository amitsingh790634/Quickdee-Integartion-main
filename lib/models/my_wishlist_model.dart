// To parse this JSON data, do
//
//     final myWishlistModel = myWishlistModelFromJson(jsonString);

import 'dart:convert';

MyWishlistModel myWishlistModelFromJson(String str) =>
    MyWishlistModel.fromJson(json.decode(str));

String myWishlistModelToJson(MyWishlistModel data) =>
    json.encode(data.toJson());

class MyWishlistModel {
  MyWishlistModel({
    required this.success,
    required this.wishlist,
  });

  bool success;
  Wishlist wishlist;

  factory MyWishlistModel.fromJson(Map<String, dynamic> json) =>
      MyWishlistModel(
        success: json["success"],
        wishlist: Wishlist.fromJson(json["wishlist"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "wishlist": wishlist.toJson(),
      };
}

class Wishlist {
  Wishlist({
    required this.id,
    required this.user,
    required this.products,
    required this.v,
  });

  String id;
  String user;
  List<Product> products;
  int v;

  factory Wishlist.fromJson(Map<String, dynamic> json) => Wishlist(
        id: json["_id"],
        user: json["user"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "__v": v,
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
  String category;
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
        category: json["category"],
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
        "category": category,
        "Stock": stock,
        "numOfReviews": numOfReviews,
        "user": user,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
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
