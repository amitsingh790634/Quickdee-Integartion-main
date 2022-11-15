// To parse this JSON data, do
//
//     final updateCartModel = updateCartModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UpdateCartModel updateCartModelFromJson(String str) =>
    UpdateCartModel.fromJson(json.decode(str));

String updateCartModelToJson(UpdateCartModel data) =>
    json.encode(data.toJson());

class UpdateCartModel {
  UpdateCartModel({
    required this.success,
    required this.msg,
    required this.cart,
  });

  bool success;
  String msg;
  Cart cart;

  factory UpdateCartModel.fromJson(Map<String, dynamic> json) =>
      UpdateCartModel(
        success: json["success"],
        msg: json["msg"],
        cart: Cart.fromJson(json["cart"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
        "cart": cart.toJson(),
      };
}

class Cart {
  Cart({
    required this.id,
    required this.user,
    required this.products,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.subTotal,
    required this.discount,
    required this.total,
    required this.shipping,
  });

  String id;
  String user;
  List<ProductElement> products;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  int subTotal;
  int discount;
  int total;
  int shipping;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["_id"],
        user: json["user"],
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        subTotal: json["subTotal"],
        discount: json["discount"],
        total: json["total"],
        shipping: json["shipping"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "subTotal": subTotal,
        "discount": discount,
        "total": total,
        "shipping": shipping,
      };
}

class ProductElement {
  ProductElement({
    required this.product,
    required this.quantity,
    required this.total,
  });

  ProductProduct product;
  int quantity;
  int total;

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        product: ProductProduct.fromJson(json["product"]),
        quantity: json["quantity"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "product": product.toJson(),
        "quantity": quantity,
        "total": total,
      };
}

class ProductProduct {
  ProductProduct({
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
    required this.createdAt,
    required this.v,
    required this.coloursAvailable,
    required this.sizesAvailable,
  });

  String id;
  String name;
  String description;
  int price;
  int ratings;
  List<Image> images;
  String category;
  int stock;
  int numOfReviews;
  String user;
  DateTime createdAt;
  int v;
  List<dynamic> coloursAvailable;
  List<dynamic> sizesAvailable;

  factory ProductProduct.fromJson(Map<String, dynamic> json) => ProductProduct(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        ratings: json["ratings"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        category: json["category"],
        stock: json["Stock"],
        numOfReviews: json["numOfReviews"],
        user: json["user"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
        coloursAvailable:
            List<dynamic>.from(json["coloursAvailable"].map((x) => x)),
        sizesAvailable:
            List<dynamic>.from(json["sizesAvailable"].map((x) => x)),
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
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
        "coloursAvailable": List<dynamic>.from(coloursAvailable.map((x) => x)),
        "sizesAvailable": List<dynamic>.from(sizesAvailable.map((x) => x)),
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
