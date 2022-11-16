import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';

class AppbarContent extends StatelessWidget {
  final String? title;
  final String? img;
    AppbarContent({Key? key, required this.title, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.08,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
        gradient: LinearGradient(
            colors: [AppColors.gredientColor2,AppColors.gredientColor1 ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            // tileMode: TileMode.clamp
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          SizedBox(
            width: 6,
          ),
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Container(
            child: Image.asset(
              img!,
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            margin: EdgeInsets.only(right: 25),
          ),
        ],
      ),
    );
  }
}