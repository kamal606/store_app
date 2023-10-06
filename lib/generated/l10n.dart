// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get stock {
    return Intl.message(
      'Stock',
      name: 'stock',
      desc: '',
      args: [],
    );
  }

  /// `Total Price`
  String get totalPrice {
    return Intl.message(
      'Total Price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get addToCart {
    return Intl.message(
      'Add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Sale Product`
  String get saleProduct {
    return Intl.message(
      'Sale Product',
      name: 'saleProduct',
      desc: '',
      args: [],
    );
  }

  /// `New Arrivals`
  String get newArrivals {
    return Intl.message(
      'New Arrivals',
      name: 'newArrivals',
      desc: '',
      args: [],
    );
  }

  /// `Recommended`
  String get recommended {
    return Intl.message(
      'Recommended',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Our Ecommerce App`
  String get ourEcommerceApp {
    return Intl.message(
      'Our Ecommerce App',
      name: 'ourEcommerceApp',
      desc: '',
      args: [],
    );
  }

  /// `Search Product Name`
  String get searchProductName {
    return Intl.message(
      'Search Product Name',
      name: 'searchProductName',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightMode {
    return Intl.message(
      'Light Mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '50%Off' key

  /// `On everything today`
  String get onEverythingToday {
    return Intl.message(
      'On everything today',
      name: 'onEverythingToday',
      desc: '',
      args: [],
    );
  }

  /// `With code:FSCREATION`
  String get withCode {
    return Intl.message(
      'With code:FSCREATION',
      name: 'withCode',
      desc: '',
      args: [],
    );
  }

  /// `Get ready`
  String get getReady {
    return Intl.message(
      'Get ready',
      name: 'getReady',
      desc: '',
      args: [],
    );
  }

  /// `to start with us`
  String get toStartWithUs {
    return Intl.message(
      'to start with us',
      name: 'toStartWithUs',
      desc: '',
      args: [],
    );
  }

  /// `NEW`
  String get newArrival {
    return Intl.message(
      'NEW',
      name: 'newArrival',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `20% Discount\nNew Arrival Products`
  String get onBordingDiscount {
    return Intl.message(
      '20% Discount\nNew Arrival Products',
      name: 'onBordingDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Take Advantage\nOf The Offer Shopping`
  String get onBordingTakeAdvantage {
    return Intl.message(
      'Take Advantage\nOf The Offer Shopping',
      name: 'onBordingTakeAdvantage',
      desc: '',
      args: [],
    );
  }

  /// `All Types Offers\nWithin Your Reach`
  String get onBordingAllTypes {
    return Intl.message(
      'All Types Offers\nWithin Your Reach',
      name: 'onBordingAllTypes',
      desc: '',
      args: [],
    );
  }

  /// `publish up your selfies to make your self more beuatiful with this app`
  String get onBordingSubTitle {
    return Intl.message(
      'publish up your selfies to make your self more beuatiful with this app',
      name: 'onBordingSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Favorite are empty`
  String get favoritesEmpty {
    return Intl.message(
      'Favorite are empty',
      name: 'favoritesEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Cart are empty`
  String get cartEmpty {
    return Intl.message(
      'Cart are empty',
      name: 'cartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get Search {
    return Intl.message(
      'Search...',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete all favorites?`
  String get dialogFavorite {
    return Intl.message(
      'Are you sure to delete all favorites?',
      name: 'dialogFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete all Cart you have?`
  String get dialogCart {
    return Intl.message(
      'Are you sure to delete all Cart you have?',
      name: 'dialogCart',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree {
    return Intl.message(
      'Agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `My Favorite`
  String get favoriteView {
    return Intl.message(
      'My Favorite',
      name: 'favoriteView',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get cartView {
    return Intl.message(
      'My Cart',
      name: 'cartView',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
