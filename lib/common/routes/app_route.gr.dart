// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

/// generated route for
/// [AddUserPage]
class AddUserRoute extends PageRouteInfo<AddUserRouteArgs> {
  AddUserRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddUserRoute.name,
          args: AddUserRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AddUserRouteArgs>(orElse: () => const AddUserRouteArgs());
      return AddUserPage(key: args.key);
    },
  );
}

class AddUserRouteArgs {
  const AddUserRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddUserRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EnterDbPage]
class EnterDbRoute extends PageRouteInfo<EnterDbRouteArgs> {
  EnterDbRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EnterDbRoute.name,
          args: EnterDbRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterDbRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<EnterDbRouteArgs>(orElse: () => const EnterDbRouteArgs());
      return EnterDbPage(key: args.key);
    },
  );
}

class EnterDbRouteArgs {
  const EnterDbRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EnterDbRouteArgs{key: $key}';
  }
}

/// generated route for
/// [IsNoRiskPage]
class IsNoRiskRoute extends PageRouteInfo<void> {
  const IsNoRiskRoute({List<PageRouteInfo>? children})
      : super(
          IsNoRiskRoute.name,
          initialChildren: children,
        );

  static const String name = 'IsNoRiskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IsNoRiskPage();
    },
  );
}

/// generated route for
/// [IsRiskPage]
class IsRiskRoute extends PageRouteInfo<void> {
  const IsRiskRoute({List<PageRouteInfo>? children})
      : super(
          IsRiskRoute.name,
          initialChildren: children,
        );

  static const String name = 'IsRiskRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IsRiskPage();
    },
  );
}

/// generated route for
/// [PhoneAuthPage]
class PhoneAuthRoute extends PageRouteInfo<PhoneAuthRouteArgs> {
  PhoneAuthRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PhoneAuthRoute.name,
          args: PhoneAuthRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PhoneAuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhoneAuthRouteArgs>(
          orElse: () => const PhoneAuthRouteArgs());
      return PhoneAuthPage(key: args.key);
    },
  );
}

class PhoneAuthRouteArgs {
  const PhoneAuthRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PhoneAuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserGuidePage]
class UserGuideRoute extends PageRouteInfo<UserGuideRouteArgs> {
  UserGuideRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserGuideRoute.name,
          args: UserGuideRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserGuideRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserGuideRouteArgs>(
          orElse: () => const UserGuideRouteArgs());
      return UserGuidePage(key: args.key);
    },
  );
}

class UserGuideRouteArgs {
  const UserGuideRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserGuideRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserListPage]
class UserListRoute extends PageRouteInfo<UserListRouteArgs> {
  UserListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserListRoute.name,
          args: UserListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserListRouteArgs>(
          orElse: () => const UserListRouteArgs());
      return UserListPage(key: args.key);
    },
  );
}

class UserListRouteArgs {
  const UserListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserTestPage]
class UserTestRoute extends PageRouteInfo<UserTestRouteArgs> {
  UserTestRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserTestRoute.name,
          args: UserTestRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserTestRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserTestRouteArgs>(
          orElse: () => const UserTestRouteArgs());
      return UserTestPage(key: args.key);
    },
  );
}

class UserTestRouteArgs {
  const UserTestRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserTestRouteArgs{key: $key}';
  }
}
