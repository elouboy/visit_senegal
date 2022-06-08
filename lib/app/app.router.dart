// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../UI/create_account/create_account_view.dart';
import '../UI/favorite_view.dart';
import '../UI/forgot_password/forgot_password_view.dart';
import '../UI/home_view.dart';
import '../UI/login/login_view.dart';
import '../UI/profile_view.dart';
import '../UI/region_view.dart';
import '../UI/senegal_view.dart';
import '../UI/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String loginView = '/login-view';
  static const String createAccountView = '/create-account-view';
  static const String homeView = '/home-view';
  static const String regionView = '/region-view';
  static const String favoriteView = '/favorite-view';
  static const String profileView = '/profile-view';
  static const String forgotPwdView = '/forgot-pwd-view';
  static const String senegalView = '/senegal-view';
  static const all = <String>{
    startupView,
    loginView,
    createAccountView,
    homeView,
    regionView,
    favoriteView,
    profileView,
    forgotPwdView,
    senegalView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.createAccountView, page: CreateAccountView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.regionView, page: RegionView),
    RouteDef(Routes.favoriteView, page: FavoriteView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.forgotPwdView, page: ForgotPwdView),
    RouteDef(Routes.senegalView, page: SenegalView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    CreateAccountView: (data) {
      var args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => CreateAccountViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateAccountView(key: args.key),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    RegionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RegionView(),
        settings: data,
      );
    },
    FavoriteView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FavoriteView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
    ForgotPwdView: (data) {
      var args = data.getArgs<ForgotPwdViewArguments>(
        orElse: () => ForgotPwdViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPwdView(key: args.key),
        settings: data,
      );
    },
    SenegalView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SenegalView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// CreateAccountView arguments holder class
class CreateAccountViewArguments {
  final Key? key;
  CreateAccountViewArguments({this.key});
}

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}

/// ForgotPwdView arguments holder class
class ForgotPwdViewArguments {
  final Key? key;
  ForgotPwdViewArguments({this.key});
}
