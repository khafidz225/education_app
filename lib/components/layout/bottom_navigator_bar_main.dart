import 'package:education_app/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigatorBarMain extends StatelessWidget {
  const BottomNavigatorBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(GlobalController());
    return SizedBox(
      width: Get.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.person,
              size: 32,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.fmd_good,
              size: 32,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              model.requestContactPermission();
            },
            child: const Icon(
              Icons.phone,
              size: 32,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.perm_media,
              size: 32,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.data_object_rounded,
              size: 32,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
