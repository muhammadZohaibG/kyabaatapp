import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Components/Components.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';

import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/MyConditions/MyConditionModel.dart';

import '../../../../../Audios/Audios.dart';
import '../../../../../utils/AppColors.dart';
import 'MyConditionController.dart';

class MyConditionScreen extends StatefulWidget {
  String? name;
  String? img;
  int? id;

  MyConditionScreen({this.name, this.img, this.id});

  @override
  State<MyConditionScreen> createState() => _MyConditionScreenState();
}

class _MyConditionScreenState extends State<MyConditionScreen> {
  final _meri_keifiyatController = Get.put(MyConditionController());
  final genderController = Get.find<GenderController>(); 

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
          elevation: 0,
          flexibleSpace: Container(
            decoration:     const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  colors: <Color>[AppColors.gredientColor2, AppColors.gredientColor1]),
            ),),
          automaticallyImplyLeading: true,
          title:   Text(
            widget.name.toString(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          actions:  [
            IconButton(icon: const Icon(Icons.notifications_active),onPressed: (){
              Audios().playAudio('audios/ring2-mp3-6551.mp3');
            }),
          ],
        ),
        // appBar: AppBar(
        //   backgroundColor: AppColors.appBarColor,
        //   leading: const Icon(Icons.notifications_active),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: Row(
        //         children: [
        //           Image.asset(
        //             widget.img.toString(),
        //             height: 50,
        //             width: 50,
        //             color: Colors.white,
        //           ),
        //           const SizedBox(
        //             width: 10,
        //           ),
        //           Text(
        //             widget.name.toString(),
        //             style: const TextStyle(
        //                 fontSize: 25,
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.white),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
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
            itemCount: myConditionList.length, 
            itemBuilder: (cxt, i) {
              return kGridView(
                  name: myConditionList[i].name,
                  img: myConditionList[i].image,
                  onTap: () {
                    print("object : ${genderController.isSelected.value}");

                    genderController.isSelected.value == false
                        ? _meri_keifiyatController
                            .playAudio(myConditionList[i].menVoice.toString())
                        : _meri_keifiyatController
                            .playAudio(myConditionList[i].womenVoice.toString());


                    print('Hello');
                  });
            }));
  }
}
