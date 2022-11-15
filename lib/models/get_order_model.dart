// // To parse this JSON data, do
// //
// //     final getOrderModel = getOrderModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// GetOrderModel getOrderModelFromJson(String str) => GetOrderModel.fromJson(json.decode(str));

// String getOrderModelToJson(GetOrderModel data) => json.encode(data.toJson());

// class GetOrderModel {
//     GetOrderModel({
//         required this.success,
//         required this.msg,
//         required this.orders,
//     });

//     bool success;
//     String msg;
//     List<Order> orders;

//     factory GetOrderModel.fromJson(Map<String, dynamic> json) => GetOrderModel(
//         success: json["success"],
//         msg: json["msg"],
//         orders: List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "success": success,
//         "msg": msg,
//         "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
//     };
// }

// class Order {
//     Order({
//         required this.id,
//         required this.user,
//         required this.paymentStatus,
//         required this.grandTotal,
//         required this.discount,
//         required this.shippingPrice,
//         required this.amountToBePaid,
//         required this.delivered,
//         required this.products,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.v,
//     });

//     String id;
//     String user;
//     String paymentStatus;
//     int grandTotal;
//     int discount;
//     int shippingPrice;
//     int amountToBePaid;
//     bool delivered;
//     List<ProductElement> products;
//     DateTime createdAt;
//     DateTime updatedAt;
//     int v;

//     factory Order.fromJson(Map<String, dynamic> json) => Order(
//         id: json["_id"],
//         user: json["user"],
//         paymentStatus: json["paymentStatus"],
//         grandTotal: json["grandTotal"],
//         discount: json["discount"],
//         shippingPrice: json["shippingPrice"],
//         amountToBePaid: json["amountToBePaid"],
//         delivered: json["delivered"],
//         products: List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         v: json["__v"],
//     );

//     Map<String, dynamic> toJson() => {
//         "_id": id,
//         "user": user,
//         "paymentStatus": paymentStatus,
//         "grandTotal": grandTotal,
//         "discount": discount,
//         "shippingPrice": shippingPrice,
//         "amountToBePaid": amountToBePaid,
//         "delivered": delivered,
//         "products": List<dynamic>.from(products.map((x) => x.toJson())),
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "__v": v,
//     };
// }

// class ProductElement {
//     ProductElement({
//         required this.unitPrice,
//         required this.product,
//         required this.quantity,
//         required this.total,
//     });

//     int unitPrice;
//     ProductProduct product;
//     int quantity;
//     int total;

//     factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
//         unitPrice: json["unitPrice"],
//         product: ProductProduct.fromJson(json["product"]),
//         quantity: json["quantity"],
//         total: json["total"],
//     );

//     Map<String, dynamic> toJson() => {
//         "unitPrice": unitPrice,
//         "product": product.toJson(),
//         "quantity": quantity,
//         "total": total,
//     };
// }

// class ProductProduct {
//     ProductProduct({
//         required this.id,
//         required this.name,
//         required this.description,
//         required this.price,
//         required this.ratings,
//         required this.images,
//         required this.category,
//         required this.stock,
//         required this.numOfReviews,
//         required this.user,
//         required this.createdAt,
//         required this.v,
//         required this.coloursAvailable,
//         required this.sizesAvailable,
//     });

//     Id id;
//     Name name;
//     Description description;
//     int price;
//     double ratings;
//     List<Image> images;
//     Category category;
//     int stock;
//     int numOfReviews;
//     User user;
//     DateTime createdAt;
//     int v;
//     List<dynamic> coloursAvailable;
//     List<dynamic> sizesAvailable;

//     factory ProductProduct.fromJson(Map<String, dynamic> json) => ProductProduct(
//         id: idValues.map[json["_id"]],
//         name: nameValues.map[json["name"]],
//         description: descriptionValues.map[json["description"]],
//         price: json["price"],
//         ratings: json["ratings"].toDouble(),
//         images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
//         category: categoryValues.map[json["category"]],
//         stock: json["Stock"],
//         numOfReviews: json["numOfReviews"],
//         user: userValues.map[json["user"]],
//         createdAt: DateTime.parse(json["createdAt"]),
//         v: json["__v"],
//         coloursAvailable: List<dynamic>.from(json["coloursAvailable"].map((x) => x)),
//         sizesAvailable: List<dynamic>.from(json["sizesAvailable"].map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         "_id": idValues.reverse[id],
//         "name": nameValues.reverse[name],
//         "description": descriptionValues.reverse[description],
//         "price": price,
//         "ratings": ratings,
//         "images": List<dynamic>.from(images.map((x) => x.toJson())),
//         "category": categoryValues.reverse[category],
//         "Stock": stock,
//         "numOfReviews": numOfReviews,
//         "user": userValues.reverse[user],
//         "createdAt": createdAt.toIso8601String(),
//         "__v": v,
//         "coloursAvailable": List<dynamic>.from(coloursAvailable.map((x) => x)),
//         "sizesAvailable": List<dynamic>.from(sizesAvailable.map((x) => x)),
//     };
// }

// enum Category { THE_627_CEEABCBD3_EF9_ECF43_BFB7, THE_628_F0_E8_EEC0472962_D98_F243 }

// final categoryValues = EnumValues({
//     "627ceeabcbd3ef9ecf43bfb7": Category.THE_627_CEEABCBD3_EF9_ECF43_BFB7,
//     "628f0e8eec0472962d98f243": Category.THE_628_F0_E8_EEC0472962_D98_F243
// });

// enum Description { ADSFDSAFRDFDSF, BRANDED_T_SHIRT }

// final descriptionValues = EnumValues({
//     "adsfdsafrdfdsf": Description.ADSFDSAFRDFDSF,
//     "Branded T shirt": Description.BRANDED_T_SHIRT
// });

// enum Id { THE_627_CF0_E624_B6_C8_CB61_C5_A72_E, THE_6299_B2526669579_E2_D28490_D, THE_627_CF0_EF24_B6_C8_CB61_C5_A735 }

// final idValues = EnumValues({
//     "627cf0e624b6c8cb61c5a72e": Id.THE_627_CF0_E624_B6_C8_CB61_C5_A72_E,
//     "627cf0ef24b6c8cb61c5a735": Id.THE_627_CF0_EF24_B6_C8_CB61_C5_A735,
//     "6299b2526669579e2d28490d": Id.THE_6299_B2526669579_E2_D28490_D
// });

// class Image {
//     Image({
//         required this.publicId,
//         required this.url,
//         required this.id,
//     });

//     String publicId;
//     String url;
//     String id;

//     factory Image.fromJson(Map<String, dynamic> json) => Image(
//         publicId: json["public_id"],
//         url: json["url"],
//         id: json["_id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "public_id": publicId,
//         "url": url,
//         "_id": id,
//     };
// }

// enum Name { XYAADF, ABCEGHI, IURJHALFDSJFLDS }

// final nameValues = EnumValues({
//     "ABCEGHI": Name.ABCEGHI,
//     "iurjhalfdsjflds": Name.IURJHALFDSJFLDS,
//     "xyaadf": Name.XYAADF
// });

// enum User { THE_627_CE5_FB6_D598_E6_E4381_DDC8, THE_628_DD705_BF56969741_F3874_F }

// final userValues = EnumValues({
//     "627ce5fb6d598e6e4381ddc8": User.THE_627_CE5_FB6_D598_E6_E4381_DDC8,
//     "628dd705bf56969741f3874f": User.THE_628_DD705_BF56969741_F3874_F
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
