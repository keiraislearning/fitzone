// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    String name;
    String description;
    String category;
    String thumbnail;
    int views;
    DateTime createdAt;
    int price;
    bool isProductHot;
    bool isFeatured;
    int userId;
    String userUsername;

    ProductEntry({
        required this.id,
        required this.name,
        required this.description,
        required this.category,
        required this.thumbnail,
        required this.views,
        required this.createdAt,
        required this.price,
        required this.isProductHot,
        required this.isFeatured,
        required this.userId,
        required this.userUsername,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        views: json["views"],
        createdAt: DateTime.parse(json["created_at"]),
        price: json["price"],
        isProductHot: json["is_product_hot"],
        isFeatured: json["is_featured"],
        userId: json["user_id"],
        userUsername: json["user_username"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "category": category,
        "thumbnail": thumbnail,
        "views": views,
        "created_at": createdAt.toIso8601String(),
        "price": price,
        "is_product_hot": isProductHot,
        "is_featured": isFeatured,
        "user_id": userId,
        "user_username": userUsername,
    };
}
