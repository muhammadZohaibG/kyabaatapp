import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Audios/Audios.dart';
import 'package:howsfeeling/Views/Screens/HandShakeBell/HandShakebellController.dart';
import 'package:howsfeeling/Views/Screens/VoicesCategories/Screens/Pain/PainCategoriesScreen.dart';
import 'package:howsfeeling/Views/Screens/appBar/AppBar.dart';
import 'package:sensors_plus/sensors_plus.dart';

class HandShakeBell extends StatefulWidget {
  const HandShakeBell({Key? key}) : super(key: key);

  @override
  State<HandShakeBell> createState() => _HandShakeBellState();
}

class _HandShakeBellState extends State<HandShakeBell> {

    final controller=Get.put(HandShakeBellController());

  // double x = 0, y = 0, z = 0;
  // Color? _backgroundColor;

    @override
    void dispose() {
      for(final subscription in controller.streamSubscriptions){
        subscription.cancel();
        controller.player.stop();

      }

      // TODO: implement dispose
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBarr(name: 'Hand shake Bell',onTap: (){}),

      ),
      body: GetBuilder<HandShakeBellController>(
        init: HandShakeBellController(),
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
              color: controller.backgroundColor
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

               const Text(
                  'Shake Phone to Ring Bell',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: (MediaQuery.of(context).size.height / 8)),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber[700],
                      ),
                      child: const Icon(Icons.doorbell_outlined,size: 70,)
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
