import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lol_duo_app/models/ratation.dart';

const _API_PREFIX = "https://kr.api.riotgames.com";

String token = 'RGAPI-15851ed6-a4df-4222-9f8e-42dc58d6599b';


class lol_repository2 {
  Future<Rotation?> freeChampion() async {
    try{
      Response response;

      Dio dio = new Dio();
      response = await dio.get('$_API_PREFIX/lol/platform/v3/champion-rotations');
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["Access-Control-Allow-Origin"] = "*";
      final data = jsonDecode(response.data);
      return Rotation.fromJson(data);
    }catch(e){
      print(e);
    }
  }
}
