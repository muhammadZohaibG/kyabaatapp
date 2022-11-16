import 'package:get/get.dart';

class GenderController extends GetxController{
  RxBool isSelected=false.obs;

  maleSelected(bool val){

    isSelected.value=val;
    update();
    print('Man Voice Ready ');

  }
  femaleSelected(bool val){

    isSelected.value=val;
    update();
    print('WoMan Voice Ready');


  }
}