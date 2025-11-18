// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(
  json.decode(str).map((x) => ProductEntry.fromJson(x)),
);

String productEntryToJson(List<ProductEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  String name;
  int price;
  int stock;
  String description;
  String category;
  String thumbnail;
  bool isFeatured;
  int rating;
  int userId;

  ProductEntry({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.description,
    required this.category,
    required this.thumbnail,
    required this.isFeatured,
    required this.rating,
    required this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    stock: json["stock"],
    description: json["description"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    isFeatured: json["is_featured"],
    rating: json["rating"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "stock": stock,
    "description": description,
    "category": category,
    "thumbnail": thumbnail,
    "is_featured": isFeatured,
    "rating": rating,
    "user_id": userId,
  };
}
