import 'package:get/get.dart';
import 'package:shake/shake.dart';

class HandShakeBellController extends GetxController{
  ShakeDetector? detector= ShakeDetector.autoStart(
      onPhoneShake: () {
        print('SHAKESSS ');
        print('object.......*************');

        // Do stuff on phone shake
      });
  @override
  void onInit() {
    // TODO: implement onInit
  detector!.startListening();
    super.onInit();
  }

}