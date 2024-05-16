import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../Presentation/Screens/HomePage/UI/home_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => ShowCaseWidget(
            builder: Builder(
                builder: (context) => const MyHomePage(title: 'Showcase view')),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
