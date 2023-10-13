import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? id;
  final String fullName;
  final String email;
  final String address;
  final String city;
  final String country;
  final String zipCode;

  const UserEntity({
    this.id,
    required this.fullName,
    required this.email,
    required this.address,
    required this.city,
    required this.country,
    required this.zipCode,
  });
  @override
  List<Object?> get props =>
      [id, fullName, email, address, city, country, zipCode];
}
