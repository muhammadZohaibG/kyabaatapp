import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:howsfeeling/Views/Screens/HandShakeBell/HandShakebellController.dart';
import 'package:shake/shake.dart';

class HandShakeBellscreen extends StatefulWidget {
   HandShakeBellscreen({Key? key}) : super(key: key);

  @override
  State<HandShakeBellscreen> createState() => _HandShakeBellscreenState();
}

class _HandShakeBellscreenState extends State<HandShakeBellscreen> {
final controller=Get.put(HandShakeBellController());
ShakeDetector detector = ShakeDetector.autoStart(
  onPhoneShake: () {
    print("object");
    // Do stuff on phone shake
  },
  minimumShakeCount: 1,
  shakeSlopTimeMS: 500,
  shakeCountResetTime: 3000,
  shakeThresholdGravity: 2.7,
);
@override
void initState() {
  super.initState();

  detector.startListening();
  // To close: detector.stopListening();
  // ShakeDetector.waitForStart() waits for user to call detector.startListening();
}
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child:
            Text('فون ہلانے پر گھنٹی کا بجنا',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),)          ),
            Center(child:
            Text('${controller.detector!.mShakeCount}',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),)          ),
          ],
        ),
        ),

    );
  }
}
