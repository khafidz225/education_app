import 'package:education_app/app/routes/app_pages.dart';
import 'package:education_app/components/layout/layout_main.dart';
import 'package:education_app/constant/constant_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/list_page_controller.dart';

class ListPageView extends GetView<ListPageController> {
  const ListPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutMain(
            isOrange: true,
            child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Color(0xfffd8900),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 42,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Lorem Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          'lorem nisl',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Column(
                      children: ConstantList()
                          .listName
                          .map((e) => Container(
                                width: Get.width,
                                margin: const EdgeInsets.only(bottom: 1),
                                decoration: const BoxDecoration(
                                    color: Color(0xff9b2ed6)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 25),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: Get.width / 2,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.LIST_CARD_PAGE);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4e1a69),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
