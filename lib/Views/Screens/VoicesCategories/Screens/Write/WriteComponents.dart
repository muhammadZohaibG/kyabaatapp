import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WriteComponents{
  Widget kHeading({String? 
  img, String? name, final onTap ,BuildContext? context}){
    return  InkWell(
      onTap: onTap  ,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 1),
        decoration:   BoxDecoration(color: Colors.white ,
        borderRadius:  BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text(name!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700,),

             ),
            Image.asset(img!,height: MediaQuery.of(context!).size.height*0.03),

          ],
        ),
      ),
    );
  }
}