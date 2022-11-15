// To parse this JSON data, do
//
//     final placeOrderModel = placeOrderModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PlaceOrderModel placeOrderModelFromJson(String str) => PlaceOrderModel.fromJson(json.decode(str));

String placeOrderModelToJson(PlaceOrderModel data) => json.encode(data.toJson());

class PlaceOrderModel {
    PlaceOrderModel({
        required this.msg,
        required this.orderId,
        required this.amount,
    });

    String msg;
    String orderId;
    int amount;

    factory PlaceOrderModel.fromJson(Map<String, dynamic> json) => PlaceOrderModel(
        msg: json["msg"],
        orderId: json["orderId"],
        amount: json["amount"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "orderId": orderId,
        "amount": amount,
    };
}
