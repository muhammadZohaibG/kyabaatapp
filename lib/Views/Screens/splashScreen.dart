import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:howsfeeling/Views/Screens/Gender/GenderScreen.dart';
import 'package:howsfeeling/Views/Screens/Home/Screens/HomeScreen.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({Key? key}) : super(key: key);

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}




class _SplasScreenState extends State<SplasScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>GenderScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image.asset('assets/splashScreen.png')),
      ),

    );
  }
}

