// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:polizen_app/presentation/pages/01_home/view/home_page.dart'
    as _i2;
import 'package:polizen_app/presentation/pages/detail/view/detail_page.dart'
    as _i1;
import 'package:polizen_app/presentation/pages/info/view/pre_meditaion_page.dart'
    as _i4;
import 'package:polizen_app/presentation/pages/player/view/player_page.dart'
    as _i3;

/// generated route for
/// [_i1.DetailPage]
class DetailRoute extends _i5.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        DetailRoute.name,
        args: DetailRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'DetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>(
        orElse: () => const DetailRouteArgs(),
      );
      return _i1.DetailPage(key: args.key);
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return _i2.HomePage(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i3.PlayerPage]
class PlayerRoute extends _i5.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        PlayerRoute.name,
        args: PlayerRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'PlayerRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayerRouteArgs>(
        orElse: () => const PlayerRouteArgs(),
      );
      return _i3.PlayerPage(key: args.key);
    },
  );
}

class PlayerRouteArgs {
  const PlayerRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlayerRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.PreMeditationPage]
class PreMeditationRoute extends _i5.PageRouteInfo<PreMeditationRouteArgs> {
  PreMeditationRoute({_i6.Key? key, List<_i5.PageRouteInfo>? children})
    : super(
        PreMeditationRoute.name,
        args: PreMeditationRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'PreMeditationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PreMeditationRouteArgs>(
        orElse: () => const PreMeditationRouteArgs(),
      );
      return _i4.PreMeditationPage(key: args.key);
    },
  );
}

class PreMeditationRouteArgs {
  const PreMeditationRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'PreMeditationRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PreMeditationRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}
