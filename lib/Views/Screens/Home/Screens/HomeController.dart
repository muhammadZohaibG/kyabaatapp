import 'package:get/get.dart';

class HomeController extends GetxController{
RxBool isSelected=false.obs;

onTapMenCallFunction(bool val){

    isSelected.value=val;
    update();
    print('Man Voice Ready ');

}
onTapWomenCallFunction(bool val){

    isSelected.value=val;
    update();
    print('WoMan Voice Ready');


}

}