import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/AppColors.dart';

class LanguageComponents{

  Widget kLanguageCustomButton({String? name, final onTap}){
    return  InkWell(
      onTap: onTap,
      child: Container(
        width: 100,

        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.appColor)
        ),
        child: Text(name!, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,),textAlign: TextAlign.center,),
      ),
    );
  }

}