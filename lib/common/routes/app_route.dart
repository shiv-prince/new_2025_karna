import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karna/pages/add_user_page.dart';
import 'package:karna/pages/enter_db_page.dart';
import 'package:karna/pages/is_no_risk_page.dart';
import 'package:karna/pages/is_risk_page.dart';
import 'package:karna/pages/user_guide_page.dart';
import 'package:karna/pages/user_list_page.dart';
import 'package:karna/pages/phone_auth_page.dart';
import 'package:karna/pages/user_test_page.dart';

part "app_route.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: PhoneAuthRoute.page, initial: true),
        AutoRoute(page: UserListRoute.page),
        AutoRoute(page: AddUserRoute.page),
        AutoRoute(page: UserGuideRoute.page),
        AutoRoute(page: EnterDbRoute.page),
        AutoRoute(page: IsRiskRoute.page),
        AutoRoute(page: IsNoRiskRoute.page),
        AutoRoute(page: UserTestRoute.page),
      ];
}
