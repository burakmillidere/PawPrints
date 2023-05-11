class Address {
  int? id;
  String? cityName;
  String? districtName;
  String? fullAddress;
  int? zipCode;

  Address({
    required this.id,
    required this.cityName,
    required this.districtName,
    required this.fullAddress,
    required this.zipCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      cityName: json['city_name'],
      districtName: json['district_name'],
      fullAddress: json['full_address'],
      zipCode: json['zip_code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'city_name': cityName,
      'district_name': districtName,
      'full_address': fullAddress,
      'zip_code': zipCode,
    };
  }
}