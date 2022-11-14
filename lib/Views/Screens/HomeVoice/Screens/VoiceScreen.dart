import 'package:flutter/material.dart';

import '../../../../utils/AppColors.dart';

class VoiceScreen extends StatelessWidget {

  String? name;
  String? icon;
   VoiceScreen({this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        leading: const Icon(Icons.notifications_active),

        actions:   [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children:  [
                Image.asset(icon.toString(),height: 50,width: 50,color: Colors.white,),
                    SizedBox(width: 10,),
                Text('${name.toString()}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),

              ],
            ),
          )
        ],
      ),
      body:Container(
        // height: Get.height,
        // width: Get.width,
        margin: EdgeInsets.all(5),
        child: GridView.builder(
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
            itemCount: 3,
            itemBuilder: (cxt, i) {
              return Container(
                child: Column(
                  children: [
                    Image.asset('assets/washing-hands.png'),
                    Text('data')
                  ],
                ),
              );

            }),
      ),
    );
  }
}
