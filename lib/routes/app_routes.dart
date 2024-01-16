import 'package:flutter_application_2/details/details_bindings.dart';
import 'package:flutter_application_2/details/details_page.dart';
import 'package:flutter_application_2/home/home_bindings.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';

class AppRoutes {
   static  List<GetPage> route = [
    GetPage(
        name: DetailsPage.routeNamed,
        page: () => const DetailsPage(),
        binding: DetailsBindings()),
    GetPage(
      name: HomePage.routeNamed,
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];
}
