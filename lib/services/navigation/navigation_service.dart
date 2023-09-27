import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic data}) => navigatorKey.currentState!.pushNamed(routeName, arguments: data);

  Future<dynamic> popAndPush(String routeName, {dynamic data}) => navigatorKey.currentState!
        .popAndPushNamed(routeName, arguments: data);

  void popUntil(String routeDelete) => navigatorKey.currentState!
        .popUntil(ModalRoute.withName(routeDelete));

  void pop({String? value}) => navigatorKey.currentState!.pop(value);
}
