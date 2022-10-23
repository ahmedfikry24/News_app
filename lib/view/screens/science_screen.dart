import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/science/science_controller.dart';
import 'package:news_app/core/functions/handling_view.dart';
import 'package:news_app/view/widgets/science_list_view.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ScienceController());
    return GetBuilder<ScienceController>(
        builder: (controller) => HandlingView(
            failure: controller.failure,
            widget: Container(
              margin: const EdgeInsets.all(10),
              child: const CustomScienceListView(),
            )));
  }
}
