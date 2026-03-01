import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minecommerse/manager/bloc/cart_bloc_bloc.dart';
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
    return BlocProvider(
      create: (context) => CartBloc(),
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,

        initialRoute: MainView.route,
      ),
    );
  }
}
