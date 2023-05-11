import 'package:pawprints/models/petowners_model.dart';
import 'package:pawprints/models/veterinarian_model.dart';

class OperatorModel {
  int id;
  String? username;
  String? password;
  String? email;
  Veterinarian? veterinarian;
  PetOwner? petOwner;

  OperatorModel({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.veterinarian,
    required this.petOwner,
  });

  factory OperatorModel.fromJson(Map<String, dynamic> json) {
    return OperatorModel(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      email: json['email'],
      veterinarian: json['veterinarian'] != null
          ? Veterinarian.fromJson(json['veterinarian'])
          : null,
      petOwner: json['petOwner'] != null
          ? PetOwner.fromJson(json['petOwner'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'veterinarian': veterinarian?.toJson(),
      'petOwner': petOwner?.toJson(),
    };
  }
}
