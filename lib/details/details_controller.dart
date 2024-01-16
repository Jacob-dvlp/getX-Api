import 'dart:collection';

import 'package:flutter_application_2/src/model/post_model.dart';
import 'package:flutter_application_2/src/repository/post_model_repository.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with StateMixin {
  final id = Get.arguments;
  final PostModelRepository postModelRepository;
  PostModel? postModel;
  DetailsController({required this.postModelRepository});

  Future getDetails() async {
    try {
      change([], status: RxStatus.loading());
      postModel = await postModelRepository.getDetails(id: id[0]);
      change(postModel, status: RxStatus.success());
    } catch (e) {
      change(e, status: RxStatus.error());
    }
  }

  @override
  void onInit() {
    getDetails();
    super.onInit();
  }
}
