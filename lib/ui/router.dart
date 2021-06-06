import 'package:flutter/material.dart';
import 'package:glade_task/ui/views/crypto_currency.dart';

import '../core/constants/app_constants.dart';



class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.cryptoCurrency:
        return MaterialPageRoute(builder: (_) =>  new CryptoCurrency());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}


