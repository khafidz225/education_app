import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutMain extends StatelessWidget {
  const LayoutMain(
      {this.title, required this.isOrange, required this.child, super.key});
  final String? title;
  final Widget child;
  final bool isOrange;

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              color: Color(isOrange ? 0xffff8a02 : 0xff992bdc),
            ),
          ),
          Positioned(
            top: paddingTop,
            left: -100,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: Get.width / 1.2,
              height: 300,
              decoration: BoxDecoration(
                  color: Color(isOrange ? 0xfffd511c : 0xff4c1c68),
                  borderRadius: BorderRadius.circular(1000)),
            ),
          ),
          Positioned(
            top: paddingTop + 80,
            left: -40,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: Get.width,
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1000)),
            ),
          ),
          Positioned(
            top: paddingTop + 150,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: Get.width,
              height: Get.height,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: -110,
            child: Container(
              width: 212,
              height: 200,
              decoration: BoxDecoration(
                color: Color(isOrange ? 0xffff8a02 : 0xff992bdc),
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: paddingTop + 130),
            child: Center(
              child: Column(
                children: [
                  Text(
                    title ?? '',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Positioned(top: paddingTop + 180, child: child),
        ],
      ),
    );
  }
}
