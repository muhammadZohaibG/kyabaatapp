import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeComponents.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeModel.dart';
import 'package:howsfeeling/Views/Screens/HomeVoice/Screens/VoiceScreen.dart';

import '../../../../utils/AppColors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeComponents _homeComponents = HomeComponents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: const Icon(Icons.notifications_active),
        centerTitle: true,
        title: Image.asset(
          'assets/splashScreen.png',
          height: 50,
          width: 50,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.lock_clock_rounded),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          elevation: 0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: _homeComponents.kBottomButtomVoices(
                      name: 'مرد کی آواز',
                      img: 'assets/young-man.png',
                      color: Colors.blue)),
              Expanded(
                  child: _homeComponents.kBottomButtomVoices(
                      name: 'عورت کی آواز',
                      img: 'assets/girl.png',
                      color: Colors.blueAccent))
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: homeModelList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(()=>VoiceScreen(name:homeModelList[index].name,icon:homeModelList[index].img ,));
                },
                child: _homeComponents.kMenuItems(
                    img: homeModelList[index].img,
                    name: homeModelList[index].name,
                    color: homeModelList[index].color),
              );
            },
          ),
        ),
      ),
    );
  }
}
