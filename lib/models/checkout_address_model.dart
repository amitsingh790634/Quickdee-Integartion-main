// To parse this JSON data, do
//
//     final checkoutAddressModel = checkoutAddressModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CheckoutAddressModel checkoutAddressModelFromJson(String str) => CheckoutAddressModel.fromJson(json.decode(str));

String checkoutAddressModelToJson(CheckoutAddressModel data) => json.encode(data.toJson());

class CheckoutAddressModel {
    CheckoutAddressModel({
        required this.success,
        required this.msg,
        required this.order,
    });

    bool success;
    String msg;
    Order order;

    factory CheckoutAddressModel.fromJson(Map<String, dynamic> json) => CheckoutAddressModel(
        success: json["success"],
        msg: json["msg"],
        order: Order.fromJson(json["order"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
        "order": order.toJson(),
    };
}

class Order {
    Order({
        required this.user,
        required this.paymentStatus,
        required this.grandTotal,
        required this.discount,
        required this.shippingPrice,
        required this.amountToBePaid,
        required this.orderStatus,
        required this.delivered,
        required this.id,
        required this.products,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    String user;
    String paymentStatus;
    int grandTotal;
    int discount;
    int shippingPrice;
    int amountToBePaid;
    String orderStatus;
    bool delivered;
    String id;
    List<ProductElement> products;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        user: json["user"],
        paymentStatus: json["paymentStatus"],
        grandTotal: json["grandTotal"],
        discount: json["discount"],
        shippingPrice: json["shippingPrice"],
        amountToBePaid: json["amountToBePaid"],
        orderStatus: json["orderStatus"],
        delivered: json["delivered"],
        id: json["_id"],
        products: List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "paymentStatus": paymentStatus,
        "grandTotal": grandTotal,
        "discount": discount,
        "shippingPrice": shippingPrice,
        "amountToBePaid": amountToBePaid,
        "orderStatus": orderStatus,
        "delivered": delivered,
        "_id": id,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

class ProductElement {
    ProductElement({
        required this.unitPrice,
        required this.product,
        required this.quantity,
        required this.total,
    });

    int unitPrice;
    ProductProduct product;
    int quantity;
    int total;

    factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        unitPrice: json["unitPrice"],
        product: ProductProduct.fromJson(json["product"]),
        quantity: json["quantity"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "unitPrice": unitPrice,
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
    double ratings;
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
        ratings: json["ratings"].toDouble(),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        category: json["category"],
        stock: json["Stock"],
        numOfReviews: json["numOfReviews"],
        user: json["user"],
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
