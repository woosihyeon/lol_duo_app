import 'package:get/get.dart';
import 'package:lol_duo_app/controller/app_controller.dart';
import 'package:lol_duo_app/repository/lol_repository.dart';

class InitBinding implements Bindings{

  @override

  void dependencies() {
    Get.put(AppController());
    Get.put(LoLRepository());
  }

}