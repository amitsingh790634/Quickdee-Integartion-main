// To parse this JSON data, do
//
//     final allRatingModel = allRatingModelFromJson(jsonString);

import 'dart:convert';

AllRatingModel allRatingModelFromJson(String str) =>
    AllRatingModel.fromJson(json.decode(str));

String allRatingModelToJson(AllRatingModel data) => json.encode(data.toJson());

class AllRatingModel {
  AllRatingModel({
    required this.success,
    required this.reviews,
  });

  bool success;
  List<Review> reviews;

  factory AllRatingModel.fromJson(Map<String, dynamic> json) => AllRatingModel(
        success: json["success"],
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
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
