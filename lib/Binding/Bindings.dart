import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderController.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeController.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GenderController());
  }

}