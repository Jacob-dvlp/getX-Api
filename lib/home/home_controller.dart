import 'package:flutter_application_2/src/model/post_model.dart';
import 'package:flutter_application_2/src/repository/post_model_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final PostModelRepository postModelRepository;
  List<PostModel> postModel = [];
  HomeController({required this.postModelRepository});

  Future getPost() async {
    try {
      
      change(postModel, status: RxStatus.loading());
      postModel = await postModelRepository.getPost();
      change(postModel, status: RxStatus.success());
    } catch (e) {
      change(e, status: RxStatus.error());
    }
  }

  @override
  void onInit() {
    getPost();
    super.onInit();
  }
}
