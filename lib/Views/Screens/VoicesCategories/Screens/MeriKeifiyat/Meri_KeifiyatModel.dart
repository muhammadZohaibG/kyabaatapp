class MeriKefiyatModel {
  String? image;
  String? name;
  String? menVoice;
  String? womenVoice;

  MeriKefiyatModel({this.image, this.name, this.menVoice, this.womenVoice});
}

List<MeriKefiyatModel> meriKefiyatlist = [
  MeriKefiyatModel(
      name: 'گرمی لگ رہی ہے',
      image: 'assets/person.png',
      menVoice: 'audios/menAudios/theme_001.mp3',
      womenVoice: 'audios/womenAudios/001-(hamariweb.com).mp3'),
  // MeriKefiyatModel(name: 'ٹھنڈ لگ رہی ہے',image: 'assets/person.png',menVoice: 'audios/theme_01.mp3'),
  // MeriKefiyatModel(name: 'ٹھیک',image: 'assets/person.png',menVoice: 'audios/01-(hamariweb.com).mp3'),
];
