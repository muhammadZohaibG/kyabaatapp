import 'dart:ui';

import '../../../../utils/AppColors.dart';

class HomeModel{
  String? name;
  String? img;
  Color? color;

  HomeModel({this.name, this.img,this.color});
}
List<HomeModel> homeModelList=[
  HomeModel(name: 'My Condition',img: 'assets/myCondition.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Need',img: 'assets/need.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Call to',img: 'assets/callto.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Clean',img: 'assets/clean.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Pain',img: 'assets/pain.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Discuss',img: 'assets/discuss.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'Write',img: 'assets/write.png',color: AppColors.sharpgreennTextColor),

];