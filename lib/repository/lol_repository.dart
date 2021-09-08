
import 'dart:io';

import 'package:get/get.dart';
import 'package:lol_duo_app/models/ratation.dart';

class LoLRepository extends GetConnect{
  static LoLRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = 'https://kr.api.riotgames.com';
    super.onInit();
  }

  Future<Rotation?> loadrotationChampion()async{
    String url = '/lol/platform/v3/champion-rotations';
    final response = await get(url,headers:{HttpHeaders.authorizationHeader :'*' } );
    if(response.status.hasError){
      return Future.error(response.statusText!);
    }else{
      if(response.statusCode == 200){
        return  Rotation.fromJson(response.body);
      }
    }
  }

}