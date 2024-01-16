import 'package:flutter/material.dart';
import 'package:flutter_application_2/home/home_page.dart';
import 'package:flutter_application_2/routes/app_routes.dart';
import 'package:get/get.dart';

class AppWidge extends StatelessWidget {
  const AppWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialRoute: HomePage.routeNamed,
      getPages:  AppRoutes.route,
    );
  }
}
