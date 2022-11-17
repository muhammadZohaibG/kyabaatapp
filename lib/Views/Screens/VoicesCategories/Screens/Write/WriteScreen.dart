import 'package:flutter/material.dart';
import 'package:howsfeeling/utils/AppColors.dart';

import '../../../appBar/AppBar.dart';
import 'WriteComponents.dart';

class WriteScreen extends StatelessWidget {
String? name;

WriteScreen({this.name});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar:PreferredSize(child: AppBarr(name: name!), preferredSize: Size.fromHeight(55)) ,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: WriteComponents().kHeading(
                          img: 'assets/pencil.png',
                          name: 'Write',
                          context: context)),
                  Expanded(
                      child: WriteComponents().kHeading(
                          img: 'assets/erase.png',
                          name: 'Erase',
                          context: context)),
                  Expanded(
                      child: WriteComponents().kHeading(
                          img: 'assets/new.png',
                          name: 'New Page',
                          context: context)),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
