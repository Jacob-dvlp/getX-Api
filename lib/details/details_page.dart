import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  final int? id;
  const DetailsPage({Key? key, this.id}) : super(key: key);
  static String routeNamed = "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsPage'),
        centerTitle: true,
      ),
      body: GetBuilder<DetailsController>(
        init: DetailsController(
          postModelRepository: Get.find(),
        ),
        builder: (controller) {
          return controller.obx((state) => SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.postModel!.title),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.postModel!.body),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
