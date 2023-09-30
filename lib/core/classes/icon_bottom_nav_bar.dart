import 'image_assets.dart';

class NavBarIcon {
  final String nameIcon;

  NavBarIcon({required this.nameIcon});
}

List<NavBarIcon> navBarIcon = <NavBarIcon>[
  NavBarIcon(nameIcon: AppAssets.cart),
  NavBarIcon(nameIcon: AppAssets.favoriteNavBar),
  NavBarIcon(nameIcon: AppAssets.profile),
];
