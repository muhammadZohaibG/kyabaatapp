import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/appBar/AppBar.dart';

import '../../../../../Audios/Audios.dart';
import '../../../../../utils/appColors.dart';
import 'PainCategoriesComponents.dart';

class PainCategoriesScreen extends StatelessWidget {
  String? name;

  PainCategoriesScreen({this.name});

  @override
  Widget build(BuildContext context) {
    print('______$name');
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(child: AppBarr(name: name.toString()), preferredSize: Size.fromHeight(55)),

      // appBar: AppBar(
      //   elevation: 0,
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //           stops: [
      //             0.0,
      //             1.0
      //           ],
      //           colors: <Color>[
      //             AppColors.gredientColor2,
      //             AppColors.gredientColor1
      //           ]),
      //     ),
      //   ),
      //   automaticallyImplyLeading: true,
      //   title: Text(
      //     name.toString(),
      //     style: const TextStyle(
      //         color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
      //   ),
      //   actions: [
      //     IconButton(
      //         icon: const Icon(Icons.notifications_active),
      //         onPressed: () {
      //           Audios().playAudio('audios/ring2-mp3-6551.mp3');
      //         }),
      //   ],
      // ),
      body: SingleChildScrollView(

        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PainCategoriesComponents().kCustomButtom(name: 'Numb',onTap: (){}),
                PainCategoriesComponents().kCustomButtom(name: 'Itching',onTap: (){}),
                PainCategoriesComponents().kCustomButtom(name: 'Pain',onTap: (){}),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height*0.5,

            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            // image: const DecorationImage(image: AssetImage('assets/painnbody.png'),fit: BoxFit.contain,),

          ),
          child: Column(
            children: [
              Image.asset('assets/painnbody.png', height: MediaQuery.of(context).orientation ==Orientation.portrait
                  ? MediaQuery.of(context).size.height*0.4:MediaQuery.of(context).size.height*0.35,),
              Padding(
                padding:  EdgeInsets.symmetric( horizontal: MediaQuery.of(context).orientation ==Orientation.portrait?0:MediaQuery.of(context).size.width*0.37),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(child: Text('Front',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey)),onPressed: (){}),
                    TextButton(child: Text('Back',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey)),onPressed: (){}),
                  ],
                ),
              )
            ],
          ),
          ),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PainCategoriesComponents().kCustomButtom1(name: 'Extreme',color: Colors.red,onTap: (){}),
              PainCategoriesComponents().kCustomButtom1(name: 'Medium',color: Colors.orange,onTap: (){}),
              PainCategoriesComponents().kCustomButtom1(name: 'Light',color: Colors.green,onTap: (){}),
            ],
          )),
        ]),
      ),
    );
  }
}
