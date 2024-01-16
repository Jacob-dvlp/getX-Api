import 'package:flutter_application_2/src/repository/post_model_repository.dart';
import 'package:get/get.dart';
import './details_controller.dart';

class DetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostModelRepository());
    Get.lazyPut(() => DetailsController(postModelRepository: Get.find()));
  }
}
