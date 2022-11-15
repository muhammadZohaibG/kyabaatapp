import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Components/Components.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MeriKeifiyat/Meri_KeifiyatController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MeriKeifiyat/Meri_KeifiyatModel.dart';

import '../../../../../utils/AppColors.dart';

class MeriKefiyatScreen extends StatefulWidget {
  String? name;
  String? img;
  int? id;

  MeriKefiyatScreen({this.name, this.img, this.id});

  @override
  State<MeriKefiyatScreen> createState() => _MeriKefiyatScreenState();
}

class _MeriKefiyatScreenState extends State<MeriKefiyatScreen> {
  final _meri_keifiyatController = Get.put(Meri_KeifiyatController());
  final homeController = Get.find<HomeController>();

//by sajawal
  @override
  void dispose() {
    // TODO: implement dispose
    _meri_keifiyatController.player.stop();
    super.dispose();
  }

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
                    widget.img.toString(),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.name.toString(),
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
            itemCount: meriKefiyatlist.length,
            itemBuilder: (cxt, i) {
              return kGridView(
                  name: meriKefiyatlist[i].name,
                  img: meriKefiyatlist[i].image,
                  onTap: () {
                    print("object : ${homeController.isSelected.value}");

                    homeController.isSelected.value == false
                        ? _meri_keifiyatController
                            .playAudio(meriKefiyatlist[i].menVoice.toString())
                        : _meri_keifiyatController
                            .playAudio(meriKefiyatlist[i].womenVoice.toString());


                    print('Hello');
                  });
            }));
  }
}
