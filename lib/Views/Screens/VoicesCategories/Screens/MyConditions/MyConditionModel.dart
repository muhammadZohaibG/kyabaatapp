class MyConditionModel {
  String? image;
  String? name;
  String? menVoice;
  String? womenVoice;

  MyConditionModel({this.image, this.name, this.menVoice, this.womenVoice});
}

List<MyConditionModel> myConditionList = [
  MyConditionModel(
      name: 'گرمی لگ رہی ہے',
      image: 'assets/person.png',
      menVoice: 'audios/menAudios/men111.m4a',
      womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
    MyConditionModel(name: 'ٹھنڈ لگ رہی ہے',image: 'assets/person.png',menVoice: 'audios/menAudios/iqbalLala.m4a',womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  // MyConditionModel(name: 'ٹھیک',image: 'assets/person.png',menVoice: 'audios/01-(hamariweb.com).mp3'),
];
