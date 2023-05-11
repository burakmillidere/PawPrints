class Veterinarian {
  int? id;
  String? name;
  String? surname;
  String? profilePhoto;
  String? password;
  String? phoneNumber;
  String? mail;
  DateTime? birthDate;
  DateTime? createdDate;
  String? title;

  Veterinarian({
    required this.id,
    required this.name,
    required this.surname,
    required this.profilePhoto,
    required this.password,
    required this.phoneNumber,
    required this.mail,
    required this.birthDate,
    required this.createdDate,
    required this.title,
  });

  factory Veterinarian.fromJson(Map<String, dynamic> json) {
    return Veterinarian(
      id: json['id'],
      name: json['name'],
      surname: json['surname'],
      profilePhoto: json['profile_photo'],
      password: json['password_'],
      phoneNumber: json['phone_number'],
      mail: json['mail'],
      birthDate: DateTime.parse(json['birth_date']),
      createdDate: DateTime.parse(json['created_date']),
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'profile_photo': profilePhoto,
      'password_': password,
      'phone_number': phoneNumber,
      'mail': mail,
      'birth_date': birthDate?.toIso8601String(),
      'created_date': createdDate?.toIso8601String(),
      'title': title,
    };
  }
}