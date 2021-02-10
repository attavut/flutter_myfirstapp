// To parse this JSON data, do
//
//     final randomPhoto = randomPhotoFromJson(jsonString);

import 'dart:convert';

RandomPhoto randomPhotoFromJson(String str) =>
    RandomPhoto.fromJson(json.decode(str));

String randomPhotoToJson(RandomPhoto data) => json.encode(data.toJson());

class RandomPhoto {
  RandomPhoto({
    this.message,
    this.status,
  });

  String message;
  String status;

  factory RandomPhoto.fromJson(Map<String, dynamic> json) => RandomPhoto(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
