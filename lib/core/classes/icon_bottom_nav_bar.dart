import 'package:store_app/core/classes/image_assets.dart';

class NavBarIcon {
  final String nameIcon;

  NavBarIcon({required this.nameIcon});
}

List<NavBarIcon> navBarIcon = <NavBarIcon>[
  NavBarIcon(nameIcon: AppAssets.cart),
  NavBarIcon(nameIcon: AppAssets.notification),
  NavBarIcon(nameIcon: AppAssets.profile),
];
