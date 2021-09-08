
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lol_duo_app/models/ratation.dart';

class HomeController extends GetxController{
  static HomeController get to => Get.find();


  Rx<Rotation> rotation = Rotation().obs;
  ScrollController scrollController = ScrollController();





}