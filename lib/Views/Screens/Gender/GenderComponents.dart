import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/AppColors.dart';

class GenderComponents{

  Widget kGenderContainer({String? img, String? name,BuildContext? context, Color? borderColor, final onTapcall}){
    return InkWell(
      onTap: onTapcall ,
      child: Container(
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: borderColor! ) ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(img!,height: 65,width: 100,),
              Text(  name!,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: AppColors.appColor),)
          ],
        ),
      ),
    );
  }

}
