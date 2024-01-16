import 'package:flutter_application_2/src/repository/post_model_repository.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostModelRepository());
    Get.lazyPut(
      () => HomeController(postModelRepository: Get.find()),
    );
  }
}
