import 'package:flutter_application_2/details/details_page.dart';
import 'package:flutter_application_2/src/model/post_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  static String routeNamed = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('HomePage'),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(
          postModelRepository: Get.find(),
        ),
        builder: (controller) => controller.obx(
          (state) => ListView.builder(
            shrinkWrap: true,
            itemCount: controller.postModel.length,
            itemBuilder: (context, index) {
              final PostModel postModel = controller.postModel[index];

              return GestureDetector(
                onTap: () => Get.toNamed(DetailsPage.routeNamed,
                    arguments: [postModel.id]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        Text(postModel.title),
                        Text(postModel.title),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          onLoading: const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error) => Center(
            child: Text(error.toString()),
          ),
        ),
      ),
    );
  }
}
