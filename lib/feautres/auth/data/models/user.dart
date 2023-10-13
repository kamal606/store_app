import 'package:store_app/feautres/auth/domain/entity/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel extends UserEntity {
  final String? id;
  final String fullName;
  final String email;
  final String address;
  final String city;
  final String country;
  final String zipCode;

  const UserModel(
      {this.id,
      this.fullName = "",
      this.email = "",
      this.address = "",
      this.city = "",
      this.country = "",
      this.zipCode = ""})
      : super(
          idUser: id,
          fullNameUser: fullName,
          emailUser: email,
          addressUser: address,
          cityUser: city,
          countryUser: country,
          zipCodeUser: zipCode,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    return UserModel(
      id: snap.id,
      fullName: snap["fullName"],
      email: snap["email"],
      address: snap["address"],
      city: snap["city"],
      country: snap["country"],
      zipCode: snap["zipCode"],
    );
  }
  Map<String, Object> toDocument() {
    return {
      "fullName": fullName,
      "email": email,
      "address": address,
      "city": city,
      "country": country,
      "zipCode": zipCode,
    };
  }
}
