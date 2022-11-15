import 'package:flutter/material.dart';
import 'package:howsfeeling/Components/Components.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MujhyChahye/Mujhy_ChahyeModel.dart';

import '../../../../../utils/AppColors.dart';

class Mujhy_ChahyeScreen extends StatelessWidget {
  String? name;
  String? img;
  int? id;

  Mujhy_ChahyeScreen({this.name, this.img, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          leading: const Icon(Icons.notifications_active),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image.asset(
                    img.toString(),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name.toString(),
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),

        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 220,
              // crossAxisCount: 2,
              childAspectRatio: 0.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 16,
              maxCrossAxisExtent: 220,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: mujhyChahyelist.length,
            itemBuilder: (cxt, i) {
              return kGridView(name: mujhyChahyelist[i].name,
                  img: mujhyChahyelist[i].image,
                  onTap: () {
                    mujhyChahyelist[i].voice.toString();
                  });
            })
    );
  }
}