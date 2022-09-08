import 'package:flutter/cupertino.dart';

class Space{
  late int id;
  late String name;
  late String image;
  late int price;
  late String city;
  late String country;
  late int rating;
  String address = "";
  String phone = "";
  String mapUrl = "";
  late List photos;
  int numberOfKitchens = 0;
  int numberOfBedrooms = 0;
  int numberOfCupboards = 0;
  
  Space(
    {
      required this.id,
      required this.name,
      required this.image,
      required this.price,
      required this.city,
      required this.country,
      required this.rating,
      this.address = "",
      this.mapUrl = "",
      this.numberOfBedrooms = 0,
      this.numberOfCupboards = 0,
      this.numberOfKitchens = 0,
      this.phone = "",
      required this.photos,
    }
  );

  Space.fromJson(json){
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    image = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
    numberOfKitchens = json['number_of_kitchens'];
  }
}