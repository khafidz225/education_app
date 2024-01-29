import 'package:education_app/components/layout/bottom_navigator_bar_main.dart';
import 'package:education_app/components/layout/layout_main.dart';
import 'package:education_app/constant/constant_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/list_card_page_controller.dart';

class ListCardPageView extends GetView<ListCardPageController> {
  const ListCardPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorBarMain(),
      body: LayoutMain(
        title: 'Lorem Ipsum',
        isOrange: false,
        child: Container(
          width: Get.width,
          height: Get.height,
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: ConstantList()
                  .listCard
                  .map(
                    (e) => Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            e.subTitle,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xff4e1a69),
                                    borderRadius: BorderRadius.circular(200)),
                                child: Center(
                                    child: Text(
                                  '${e.minute} M',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
