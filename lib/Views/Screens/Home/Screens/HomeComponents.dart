import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeComponents {
  Widget kBottomButtomVoices({String? img, String? name, Color? color}) {
    return Container(
      decoration: BoxDecoration(color: color),

      // margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      height: 80,
      width: 170,
      child: Column(
        children: [
          Image.asset(
            img!,
            height: 35,
            width: 35,
            color: Colors.white,
          ),
          Text(
            name!,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget kMenuItems({String?  img, String? name,Color? color }) {
    return Container(
      height: 70,

      decoration: BoxDecoration(
        color: color
      ),
      child: Row(
        children:  [
          Expanded(
              child: SizedBox(
            width: 10,
          )),
          Expanded(child: Image.asset(img!,color: Colors.white,height: 50,width: 50,)),
          Expanded(child: Align(alignment: Alignment.centerRight,child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(name!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: Colors.white),),
          )))
        ],
      ),
    );
  }
}
