import 'package:firebase_auth/firebase_auth.dart';
import 'package:pawprints/models/operator_model.dart';
import 'package:pawprints/models/pets_model.dart';
import '../models/adresses_model.dart';
import '../services/auth_service.dart';
import 'adresses_model.dart';

class PetOwner {
  int? id;
  OperatorModel? user;
  String? fullname;
  String? profilePhoto;
  String? password;
  String? phoneNumber;
  String? mail;
  DateTime? birthDate;
  DateTime? createdDate;
  Address? address;
  List<Pet>? pets;

  PetOwner({
    required this.id,
    required this.user,
    required this.fullname,
    required this.profilePhoto,
    required this.password,
    required this.phoneNumber,
    required this.mail,
    required this.birthDate,
    required this.createdDate,
    required this.address,
    required this.pets,
  });

  factory PetOwner.fromJson(Map<String, dynamic> json) {
    return PetOwner(
      id: json['id'],
      user: OperatorModel.fromJson(json['user']),
      fullname: json['fullname'],
      profilePhoto: json['profile_photo'],
      password: json['password_'],
      phoneNumber: json['phone_number'],
      mail: json['mail'],
      birthDate: DateTime.parse(json['birth_date']),
      createdDate: DateTime.parse(json['created_date']),
      address: Address.fromJson(json['address']),
      pets: (json['pets'] as List<dynamic>)
          .map((petJson) => Pet.fromJson(petJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user?.toJson(),
      'fullname': fullname,
      'profile_photo': profilePhoto,
      'password_': password,
      'phone_number': phoneNumber,
      'mail': mail,
      'birth_date': birthDate?.toIso8601String(),
      'created_date': createdDate?.toIso8601String(),
      'address': address?.toJson(),
      'pets': pets?.map((pet) => pet.toJson()).toList(),
    };
  }
}
