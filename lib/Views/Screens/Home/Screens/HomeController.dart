import 'package:get/get.dart';

import '../../../../utils/AppColors.dart';
import 'HomeModel.dart';

class HomeController extends GetxController{
bool isSelected=false;

onTapMenCallFunction(bool val){

    isSelected=val;
    update();
    print('Man Voice Ready ');

}
onTapWomenCallFunction(bool val){

    isSelected=val;
    update();
    print('WoMan Voice Ready');


}
List<HomeModel> homeModelList=[
    HomeModel(name: 'My Condition'.tr,img: 'assets/myCondition.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Need'.tr,img: 'assets/need.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Call to'.tr,img: 'assets/callto.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Clean'.tr,img: 'assets/clean.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Pain'.tr,img: 'assets/pain.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Discuss'.tr,img: 'assets/discuss.png',color: AppColors.sharpgreennTextColor),
    HomeModel(name: 'Write'.tr,img: 'assets/write.png',color: AppColors.sharpgreennTextColor),

];

}