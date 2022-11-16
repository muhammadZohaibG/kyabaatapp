import 'package:flutter/material.dart';

import 'WriteComponents.dart';

class LekhkrBatanaScreen extends StatelessWidget {
  const LekhkrBatanaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
