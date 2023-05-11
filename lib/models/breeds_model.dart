class Breed {
  int id;
  String breedTypeName;

  Breed({
    required this.id,
    required this.breedTypeName,
  });

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
      id: json['id'],
      breedTypeName: json['breed_type_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'breed_type_name': breedTypeName,
    };
  }
}