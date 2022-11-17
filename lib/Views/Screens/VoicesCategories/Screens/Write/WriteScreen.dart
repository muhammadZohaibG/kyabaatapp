import 'package:flutter/material.dart';

import '../../../appBar/AppBar.dart';
import 'WriteComponents.dart';

class WriteScreen extends StatelessWidget {
String? name;

WriteScreen({this.name});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(child: AppBarr(name: name!), preferredSize: Size.fromHeight(55)) ,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: WriteComponents().kHeading(
                        img: 'assets/pencil.png',
                        name: 'لکھیں',
                        context: context)),
                Expanded(
                    child: WriteComponents().kHeading(
                        img: 'assets/eraser.png',
                        name: 'مٹائیں',
                        context: context)),
                Expanded(
                    child: WriteComponents().kHeading(
                        img: 'assets/new-.png',
                        name: 'نیا',
                        context: context)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
