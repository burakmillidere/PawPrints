import 'breeds_model.dart';
import 'diagnosis_model.dart';

class Pet {
  int? id;
  String? name;
  String? sex;
  String? profilePhoto;
  DateTime? birthDate;
  int? age;
  Breed? breed;
  List<Diagnosis>? diagnoses;

  Pet({
    required this.id,
    required this.name,
    required this.sex,
    required this.profilePhoto,
    required this.birthDate,
    required this.age,
    required this.breed,
    required this.diagnoses,
  });

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'],
      name: json['name'],
      sex: json['sex'],
      profilePhoto: json['profilePhoto'],
      birthDate: DateTime.parse(json['birthDate']),
      age: json['age'],
      breed: Breed.fromJson(json['breed']),
      diagnoses: (json['diagnoses'] as List<dynamic>)
          .map((diagnosisJson) => Diagnosis.fromJson(diagnosisJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sex': sex,
      'profilePhoto': profilePhoto,
      'birthDate': birthDate?.toIso8601String(),
      'age': age,
      'breed': breed?.toJson(),
      'diagnoses': diagnoses?.map((diagnosis) => diagnosis.toJson()).toList(),
    };
  }
}