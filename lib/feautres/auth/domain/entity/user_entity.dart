class UserEntity {
  final String? idUser;
  final String fullNameUser;
  final String emailUser;
  final String addressUser;
  final String cityUser;
  final String countryUser;
  final String zipCodeUser;

  UserEntity({
    this.idUser,
    this.fullNameUser = "",
    this.emailUser = "",
    this.addressUser = "",
    this.cityUser = "",
    this.countryUser = "",
    this.zipCodeUser = "",
  });
}
