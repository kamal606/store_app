import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? idUser;
  final String fullNameUser;
  final String emailUser;
  final String addressUser;
  final String cityUser;
  final String countryUser;
  final String zipCodeUser;

  const UserEntity({
    this.idUser,
    this.fullNameUser = "",
    this.emailUser = "",
    this.addressUser = "",
    this.cityUser = "",
    this.countryUser = "",
    this.zipCodeUser = "",
  });

  @override
  List<Object?> get props => [
        idUser,
        fullNameUser,
        emailUser,
        addressUser,
        cityUser,
        countryUser,
        zipCodeUser
      ];
}
