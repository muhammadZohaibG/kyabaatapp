import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget kGridView({String? img, String? name, final listcount,  final onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image.asset(img!),
          Text(name!,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 18),)
        ],
      ),
    ),
  );
}