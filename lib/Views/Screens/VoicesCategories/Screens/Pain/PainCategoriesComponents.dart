import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howsfeeling/utils/appColors.dart';

class PainCategoriesComponents {
  Widget kCustomButtom({String? name,final onTap}) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.8,
              blurRadius: 1,
              blurStyle: BlurStyle.normal,
              offset: Offset( 0,2), // Shadow position
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name!,
            style: const TextStyle(
                color: AppColors.appColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
  Widget kCustomButtom1({String? name,Color? color,final onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color,

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name!,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
