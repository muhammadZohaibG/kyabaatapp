import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Pain/painCategoriesController.dart';
import 'package:howsfeeling/Views/Screens/appBar/AppBar.dart';

import '../../../../../Audios/Audios.dart';
import '../../../../../utils/appColors.dart';
import 'PainCategoriesComponents.dart';

class PainCategoriesScreen extends StatefulWidget {
  String? name;

  PainCategoriesScreen({this.name});

  @override
  State<PainCategoriesScreen> createState() => _PainCategoriesScreenState();
}


final controller= Get.put(PainCategoriesController());
final genderController= Get.find<GenderController>();
class _PainCategoriesScreenState extends State<PainCategoriesScreen> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.player.stop();
  }

  @override
  Widget build(BuildContext context) {
    print('______${widget.name}');
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(child: AppBarr(name: widget.name.toString()), preferredSize: Size.fromHeight(55)),


      body: SingleChildScrollView(

        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PainCategoriesComponents().kCustomButtom(name: 'Numb',onTap: (){
                  if(genderController.isSelected==false){
                    controller.playAudio('url');
                  }else{
                    controller.playAudio('url');

                  }
                }),
                PainCategoriesComponents().kCustomButtom(name: 'Itching',onTap: (){
                  if(genderController.isSelected==false){
                    controller.playAudio('url');
                  }else{
                    controller.playAudio('url');

                  }
                }),
                PainCategoriesComponents().kCustomButtom(name: 'Pain',onTap: (){
                  if(genderController.isSelected==false){
                    controller.playAudio('url');
                  }else{
                    controller.playAudio('url');

                  }
                }),
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
                    TextButton(child: Text('Front',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey)),onPressed: (){
                      if(genderController.isSelected==false){
                        controller.playAudio('url');
                      }else{
                        controller.playAudio('url');

                      }
                    }),
                    TextButton(child: Text('Back',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.grey)),onPressed: (){
                      if(genderController.isSelected==false){
                        controller.playAudio('url');
                      }else{
                        controller.playAudio('url');

                      }
                    }),
                  ],
                ),
              )
            ],
          ),
          ),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PainCategoriesComponents().kCustomButtom1(name: 'Extreme',color: Colors.red,onTap: (){
                if(genderController.isSelected==false){
                  controller.playAudio('url');
                }else{
                  controller.playAudio('url');

                }
              }),
              PainCategoriesComponents().kCustomButtom1(name: 'Medium',color: Colors.orange,onTap: (){
                if(genderController.isSelected==false){
                  controller.playAudio('url');
                }else{
                  controller.playAudio('url');

                }
              }),
              PainCategoriesComponents().kCustomButtom1(name: 'Light',color: Colors.green,onTap: (){
                if(genderController.isSelected==false){
                  controller.playAudio('url');
                }else{
                  controller.playAudio('url');

                }
              }),
            ],
          )),
        ]),
      ),
    );
  }
}
