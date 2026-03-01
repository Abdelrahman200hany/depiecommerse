// import 'package:flutter/material.dart';
// import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';
// import 'package:minecommerse/view/custom_widgets/product_item_view.dart';
// import 'package:minecommerse/view/home_view.dart';
// import 'package:minecommerse/view/main_view.dart';

// Route<dynamic> onGenerateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case HomeView.route:
//       return MaterialPageRoute(builder: (context) => const HomeView());
//     case MainView.route:
//       return MaterialPageRoute(builder: (context) => const MainView());
//     case ProductItemView.route:
//       return MaterialPageRoute(
//         builder: (context) =>
//             ProductItemView(product: settings.arguments as ProductItemModel),
//       );
//     default:
//       return MaterialPageRoute(builder: (context) => const HomeView());
//   }
// }
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:minecommerse/models/product_item_model.dart';
import 'package:minecommerse/view/custom_widgets/product_item_view.dart';
import 'package:minecommerse/view/home_view.dart';
import 'package:minecommerse/view/main_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case HomeView.route:
      return PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 200),
        child: const HomeView(),
      );

    case MainView.route:
      return PageTransition(
        type: PageTransitionType.rightToLeft,
        duration: const Duration(milliseconds: 200),
        child: const MainView(),
      );

    case ProductItemView.route:
      return PageTransition(
        type: PageTransitionType.bottomToTop,
        alignment: Alignment.topRight,
      
        duration: const Duration(milliseconds:200),
        child: ProductItemView(
          product: settings.arguments as ProductItemModel,
        ),
      );

    default:
      return PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 200),
        settings: settings,
        child: const HomeView(),
      );
  }
}
