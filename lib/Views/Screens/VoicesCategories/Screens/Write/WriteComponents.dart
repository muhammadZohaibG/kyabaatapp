import 'package:flutter/cupertino.dart';
import 'package:howsfeeling/utils/AppColors.dart';

class WriteComponents{
  Widget kHeading({String? img, String? name,Color? color ,BuildContext? context}){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      decoration: const BoxDecoration(color:AppColors.lekhkrBatanaColor ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img!,height: MediaQuery.of(context!).size.height*0.085),
           Text(name!, style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700,),)
        ],
      ),
    );
  }
}