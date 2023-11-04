import 'package:flutter/material.dart';
import 'package:gantech_mobile/pages/home.dart';
import 'package:gantech_mobile/pages/login.dart';
import 'package:gantech_mobile/routes.dart' as routes;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const String loginRoute = routes.loginRoute;
  static const String homeRoute = routes.homeRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: loginRoute,
      routes: <String, WidgetBuilder> {
        loginRoute: (BuildContext context) => const LoginPage(),
        homeRoute: (BuildContext context) => const HomePage(),
      }
    );
  }
}