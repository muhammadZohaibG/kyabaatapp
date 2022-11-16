import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howsfeeling/utils/AppColors.dart';

Widget kGridView({String? img, String? name, final listcount,  final onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: Colors.white),
      margin: const EdgeInsets.all(5),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(img!, height: 80),
          Text(name!,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: AppColors.appColor),)
        ],
      ),
    ),
  );
}