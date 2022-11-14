import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget kGridView({String? img, String? name, final listcount,  final onTap}){
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisExtent: 220,
        // crossAxisCount: 2,
        childAspectRatio: 0.5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 16, maxCrossAxisExtent: 220,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listcount,
      itemBuilder: (cxt, i) {
        return InkWell(
          onTap:onTap,
          child: Container(
            child: Column(
              children: [
                Image.asset('${img}'),
                Text('${name}')
              ],
            ),
          ),
        );

      });
}