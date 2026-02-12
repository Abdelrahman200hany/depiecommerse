import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';
import 'package:minecommerse/view/custom_widgets/product_item_view.dart';
import 'package:minecommerse/view/home_view.dart';
import 'package:minecommerse/view/main_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.route:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case MainView.route:
      return MaterialPageRoute(builder: (context) => const MainView());
    case ProductItemView.route:
      return MaterialPageRoute(
        builder: (context) =>
            ProductItemView(product: settings.arguments as ProductItemModel),
      );
    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
