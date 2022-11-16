class NeedModel{
  String? image;
  String? name;
  String? voice;

  NeedModel({this.image, this.name, this.voice});
}

List<NeedModel> needModelList=[
  NeedModel(name: 'مت جاؤ',image: 'assets/person.png',voice: ''),
  NeedModel(name: 'دوا',image: 'assets/medicine.png',voice: ''),
  NeedModel(name: 'کمبل',image: 'assets/blanket.png',voice: ''),
];