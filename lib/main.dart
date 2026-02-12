import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/on_generate_route.dart';
import 'package:minecommerse/view/main_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => Ecommerse(), // Wrap your app
    ),
  );
}

class Ecommerse extends StatelessWidget {
  const Ecommerse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     

      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,

      initialRoute: MainView.route,
    );
  }
}

