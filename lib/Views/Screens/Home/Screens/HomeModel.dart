import 'dart:ui';

import '../../../../utils/AppColors.dart';

class HomeModel{
  String? name;
  String? img;
  Color? color;

  HomeModel({this.name, this.img,this.color});
}
List<HomeModel> homeModelList=[
  HomeModel(name: '  میری کیفیت',img: 'assets/heart.png',color: AppColors.sharpgreennTextColor),
  HomeModel(name: 'مجھے چاہيے',img: 'assets/open-hand.png',color: AppColors.greennTextColor),
  HomeModel(name: 'اسے بلاؤ',img: 'assets/talk person.png',color: AppColors.greenTextColor),
  HomeModel(name: 'صاف کردو',img: 'assets/washing-hands.png',color: AppColors.lightgrenTextColor),
  HomeModel(name: 'مجھے درد ھے',img: 'assets/pain.png',color: AppColors.greenTextColor),
  HomeModel(name: 'بات چیت',img: 'assets/chat.png',color: AppColors.greennTextColor),
  HomeModel(name: 'لکھ کر بتانا',img: 'assets/pencil.png',color: AppColors.sharpgreennTextColor),
];